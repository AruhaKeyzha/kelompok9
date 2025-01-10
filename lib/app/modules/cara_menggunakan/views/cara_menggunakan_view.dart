import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cara_menggunakan_controller.dart';

class CaraMenggunakanView extends GetView<CaraMenggunakanController> {
  const CaraMenggunakanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cara Menggunakan'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header informasi
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cara Menggunakan',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 123, 239),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Panduan lengkap untuk menggunakan aplikasi Manajemen Aset Pribadi.',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Konten utama
            Expanded(
              child: ListView(
                children: [
                  const Text(
                    "Selamat datang di aplikasi Manajemen Aset Pribadi!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Berikut adalah panduan singkat tentang cara menggunakan aplikasi ini:",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 20),
                  _buildInstructionItem(
                    icon: Icons.add,
                    title: "Menambahkan Catatan",
                    description:
                        "Tekan tombol '+' untuk menambahkan aset baru, baik itu masuk atau keluar.",
                  ),
                  _buildInstructionItem(
                    icon: Icons.list,
                    title: "Melihat Daftar Catatan",
                    description:
                        "Anda dapat melihat daftar seluruh Catatan Aset Pribadi Anda pada halaman utama.",
                  ),
                  _buildInstructionItem(
                    icon: Icons.edit,
                    title: "Mengedit Catatan",
                    description:
                        "Tekan catatan yang ingin diedit untuk mengubah detailnya.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInstructionItem(
      {required IconData icon,
      required String title,
      required String description}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color.fromARGB(255, 0, 159, 245), size: 28),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
