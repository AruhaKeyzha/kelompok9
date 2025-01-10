import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hubungi_layanan_controller.dart';

class HubungiLayananView extends GetView<HubungiLayananController> {
  const HubungiLayananView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hubungi Customer Service'),
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
                color: const Color.fromARGB(255, 178, 197, 255),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Layanan Pelanggan',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 84, 239),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Jika Anda memerlukan bantuan, silakan hubungi kami.',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Konten utama
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kontak Kami',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(16.0),
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
                      children: [
                        Icon(Icons.email,
                            color: const Color.fromARGB(255, 0, 45, 245), size: 24),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Text(
                            'catatanku.id@gmail.com',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Info tambahan atau saran
                  const Text(
                    'Tim kami akan segera merespon pertanyaan atau keluhan Anda melalui email.',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ],
              ),
            ),
            // Tombol kembali ke profil
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigasi ke halaman sebelumnya
                  Get.back();
                },
                child: const Text(
                  'Kembali ke Profil',
                  style: TextStyle(color: Color.fromARGB(255, 98, 54, 244), fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
