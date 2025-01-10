import 'package:get/get.dart';

import '../controllers/atur_ulang_kata_sandi_controller.dart';

class AturUlangKataSandiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AturUlangKataSandiController>(
      () => AturUlangKataSandiController(),
    );
  }
}
