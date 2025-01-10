import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/controllers/auth_controller.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  // const LoginView({super.key});
  final cAuth = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 204, 238, 244),
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "MASUK",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/logo.png",
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Email',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            TextField(
              controller: controller.cEmail,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Masukkan Email",
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Password',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Obx(
              () => TextField(
                controller: controller.cPassword,
                obscureText: controller.isPasswordHidden.value,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Masukkan Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      controller.isPasswordHidden.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      controller.isPasswordHidden.toggle();
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text("Lupa Password?"),
                onPressed: () {
                  // Get.offAllNamed(Routes.RESET_PASSWORD);
                  Get.toNamed(Routes.RESET_PASSWORD);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                cAuth.login(
                  controller.cEmail.text,
                  controller.cPassword.text,
                );
              },
              child: Text("MASUK"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 68, 98, 247),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8), // Sesuaikan angka untuk tingkat kotak
                ),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum Punya Akun ?"),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.REGISTER);
                  },
                  child: Text("Daftar Disini"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
