import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/atur_ulang_kata_sandi_controller.dart';

class AturUlangKataSandiView extends GetView<AturUlangKataSandiController> {
  const AturUlangKataSandiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atur Ulang Kata Sandi'),
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
                color: Color.fromARGB(255, 204, 238, 244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Atur Ulang Kata Sandi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 127, 239),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Ikuti langkah-langkah di bawah ini untuk mengubah kata sandi Anda.',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Langkah-langkah atur ulang kata sandi
            Expanded(
              child: ListView(
                children: [
                  _buildStepItem(
                    icon: Icons.person,
                    step: "1. Buka halaman Profil.",
                  ),
                  _buildStepItem(
                    icon: Icons.edit,
                    step: "2. Klik tombol 'Ubah Profil'.",
                  ),
                  _buildStepItem(
                    icon: Icons.lock,
                    step:
                        "3. Pada bagian 'Kata Sandi', masukkan kata sandi baru Anda.",
                  ),
                  _buildStepItem(
                    icon: Icons.save,
                    step: "4. Klik tombol 'Simpan' untuk menyimpan perubahan.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepItem({required IconData icon, required String step}) {
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
          Icon(icon, color: const Color.fromARGB(255, 0, 110, 245), size: 28),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              step,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
