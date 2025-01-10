import 'package:get/get.dart';

import '../controllers/hubungi_layanan_controller.dart';

class HubungiLayananBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HubungiLayananController>(
      () => HubungiLayananController(),
    );
  }
}
