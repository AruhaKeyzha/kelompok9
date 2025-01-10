import 'package:get/get.dart';

import '../modules/atur_ulang_kata_sandi/bindings/atur_ulang_kata_sandi_binding.dart';
import '../modules/atur_ulang_kata_sandi/views/atur_ulang_kata_sandi_view.dart';
import '../modules/bantuan/bindings/bantuan_binding.dart';
import '../modules/bantuan/views/bantuan_view.dart';
import '../modules/cara_menggunakan/bindings/cara_menggunakan_binding.dart';
import '../modules/cara_menggunakan/views/cara_menggunakan_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/hubungi_layanan/bindings/hubungi_layanan_binding.dart';
import '../modules/hubungi_layanan/views/hubungi_layanan_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/reset_password/bindings/reset_password_binding.dart';
import '../modules/reset_password/views/reset_password_view.dart';
import '../modules/ubah_profile/bindings/ubah_profile_binding.dart';
import '../modules/ubah_profile/views/ubah_profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.UBAH_PROFILE,
      page: () => const UbahProfileView(),
      binding: UbahProfileBinding(),
    ),
    GetPage(
      name: _Paths.BANTUAN,
      page: () => const BantuanView(),
      binding: BantuanBinding(),
    ),
    GetPage(
      name: _Paths.CARA_MENGGUNAKAN,
      page: () => const CaraMenggunakanView(),
      binding: CaraMenggunakanBinding(),
    ),
    GetPage(
      name: _Paths.ATUR_ULANG_KATA_SANDI,
      page: () => const AturUlangKataSandiView(),
      binding: AturUlangKataSandiBinding(),
    ),
    GetPage(
      name: _Paths.HUBUNGI_LAYANAN,
      page: () => const HubungiLayananView(),
      binding: HubungiLayananBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
  ];
}
