import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> GetData() async {
    CollectionReference aset = firestore.collection('aset');
    return aset.get();
  }

  Stream<QuerySnapshot<Object?>> StreamData() {
    CollectionReference aset = firestore.collection('aset');
    return aset.snapshots();
  }

  // Menggunakan RxString agar bisa reaktif dan update UI ketika berubah
  var username = ''.obs; // Username reaktif

  @override
  void onInit() {
    super.onInit();
    _fetchUserData(); // Ambil data pengguna saat controller diinisialisasi
  }

  Future<void> _fetchUserData() async {
    try {
      User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null) {
        String uid = currentUser.uid;

        // Ambil data dari Firestore
        DocumentSnapshot userDoc =
            await FirebaseFirestore.instance.collection('users').doc(uid).get();

        if (userDoc.exists) {
          // Update nilai username secara reaktif
          username.value = userDoc.get('username') ?? 'Nama tidak ditemukan';
        } else {
          print("User document tidak ditemukan.");
        }
      }
    } catch (e) {
      print("Error mengambil data pengguna: $e");
    }
  }
}
