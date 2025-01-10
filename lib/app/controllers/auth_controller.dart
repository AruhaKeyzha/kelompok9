import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:myapp/app/routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void register(String emailAddress, String password,
      {required String username}) async {
    try {
      // Membuat pengguna baru
      UserCredential myUser = await auth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      // Menyimpan data pengguna di Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(myUser.user!.uid)
          .set({
        'username': username,
        'email': emailAddress,
      });

      // Mengirim email verifikasi
      await myUser.user!.sendEmailVerification();

      // Tampilkan dialog konfirmasi email
      Get.defaultDialog(
        title: "Verifikasi email",
        middleText:
            "Kami telah mengirimkan verifikasi ke email $emailAddress. Silakan periksa inbox Anda.",
        onConfirm: () {
          Get.back(); // Menutup dialog
          Get.back(); // Kembali ke halaman login
        },
        textConfirm: "OK",
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void login(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user!.emailVerified) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.defaultDialog(
          title: "Proses Gagal !",
          middleText: "Email belum diverifikasi.",
          textConfirm: "OK",
          onConfirm: () {
            Get.back();
          },
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Get.defaultDialog(
          title: "Proses Gagal",
          middleText: "No user found for that email.",
        );
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.defaultDialog(
          title: "Proses Gagal",
          middleText: "Wrong password provided for that user.",
        );
      }
    }
  }

  void logout() async {
    await auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }

  void resetPassword(String email) async {
    if (email != "" && GetUtils.isEmail(email)) {
      try {
        await auth.sendPasswordResetEmail(email: email);
        Get.defaultDialog(
          title: "Berhasil",
          middleText: "Kami telah mengirimkan reset password ke $email",
          onConfirm: () {
            Get.back();
            Get.back();
          },
          textConfirm: "OK",
        );
      } catch (e) {
        Get.defaultDialog(
            title: "Terjadi kesalahan",
            middleText: "Tidak dapat melakukan reset password.");
      }
    } else {
      Get.defaultDialog(
          title: "Terjadi kesalahan", middleText: "Email tidak valid");
    }
  }
}
