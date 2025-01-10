import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Kami'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 204, 238, 244),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 149, 255),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'di ${controller.appName}, Kelola aset pribadi Anda dengan mudah dan efisien! Kami hadir untuk membantu Anda merencanakan, mengontrol, dan memantau keuangan tanpa ribet, sehingga pengelolaan aset jadi lebih cerdas dan praktis.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),
              Text(
                'Kami percaya bahwa pengelolaan aset yang cerdas adalah kunci kestabilan finansial. Dengan fitur intuitif dan desain elegan, aplikasi ini membantu Anda mengatur, memantau, dan mengoptimalkan aset pribadi, memastikan masa depan yang lebih terjamin.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 30),
              Text(
                'Visi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 149, 255),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Menjadi aplikasi terbaik untuk mengelola aset pribadi, membantu Anda merencanakan, mengontrol, dan mengoptimalkan keuangan dengan mudah dan efektif.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 30),
              Text(
                'Misi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 149, 255),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '• Menyediakan alat pengelolaan aset yang praktis dan mudah diakses, membantu Anda mengatur keuangan dengan lebih efisien.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 5),
              const Text(
                '• Menyediakan fitur canggih untuk melacak aset, mengelola anggaran, dan merencanakan investasi jangka panjang dengan lebih efisien.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 5),
              const Text(
                '• Meningkatkan kesadaran dalam mengelola aset, sehingga setiap keputusan finansial lebih bijak dan strategis.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
