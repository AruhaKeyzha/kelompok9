// Suggested code may be subject to a license. Learn more: ~LicenseLog:2297630870.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3617287351.
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back(); // Kembali ke halaman sebelumnya
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Header Profile
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 77, 133, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://via.placeholder.com/150'), // Ganti URL dengan gambar profil
                      radius: 30,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Email@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'ID',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Menu Options
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Ubah Profile'),
                      onTap: () {
                        Get.toNamed('/ubah-profile');
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: const Text('Notifikasi'),
                      onTap: () {
                        // Implementasi navigasi ke halaman Notifikasi
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: const Text('Bantuan'),
                      onTap: () {
                        Get.toNamed('/bantuan'); // Navigasi ke halaman bantuan
                      },
                    ),
                    const Divider(),
                    ListTile(
                      title: const Text('Tentang kami'),
                      onTap: () {
                        // Implementasi navigasi ke halaman Tentang Kami
                      },
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'ID',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Implementasi tombol Kirim
                            },
                            child: const Text('Kirim'),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: const Icon(Icons.info_outline),
                            onPressed: () {
                              _showInfoDialog(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      title: const Text(
                        'LogOut',
                        style: TextStyle(color: Color.fromARGB(255, 105, 54, 244)),
                      ),
                      onTap: () {
                        Get.toNamed('/login'); // Navigasi ke halaman login
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color.fromARGB(255, 128, 143, 255),
        title: const Text(
          'Info',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: const Text(
          'Fitur ID Bergabung, Anda dapat terhubung dengan anggota keluarga lain untuk mencatat dan mengelola keuangan bersama. Cukup masukkan ID yang diberikan oleh keluarga atau grup Anda, dan Anda akan langsung terhubung ke catatan mereka.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Kembali'),
          ),
        ],
      ),
    );
  }
}
