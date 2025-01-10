import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ubah_profile_controller.dart';

class UbahProfileView extends GetView<UbahProfileController> {
  const UbahProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9E6), // Warna latar belakang
      appBar: AppBar(
        title: const Text(
          'Ubah Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor:
            const Color.fromARGB(255, 115, 144, 212), // Warna coklat muda
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Aksi tombol kembali
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150', // Ganti dengan URL atau Asset gambar
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      // Aksi untuk mengganti foto profil
                      print("Edit Foto Profil");
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(5),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Edit',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Aksi tombol selesai
                print("Selesai mengedit");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 115, 150, 212),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              ),
              child: const Text(
                'SELESAI',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
