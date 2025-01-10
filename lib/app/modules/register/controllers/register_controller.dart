import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  var isPasswordHidden = true.obs;

  final cEmail = TextEditingController();
  final cPassword = TextEditingController();
  final cUsername = TextEditingController();
  final cConfirmPassword = TextEditingController();

  @override
  void onClose() {
    cEmail.dispose();
    cPassword.dispose();
    cUsername.dispose();
    super.onClose();
  }
}
