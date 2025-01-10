import 'package:get/get.dart';

import '../controllers/cara_menggunakan_controller.dart';

class CaraMenggunakanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CaraMenggunakanController>(
      () => CaraMenggunakanController(),
    );
  }
}
