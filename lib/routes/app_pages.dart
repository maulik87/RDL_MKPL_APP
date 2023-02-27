import 'package:get/route_manager.dart';
import 'package:rdl_market_place_app/core/config/utils.dart';
import 'package:rdl_market_place_app/features/bottom_bar/bindings/bottom_bar_binding.dart';
import 'package:rdl_market_place_app/features/bottom_bar/view/bottom_bar_screen.dart';
import 'package:rdl_market_place_app/features/forgotpassword/bindings/forgot_pass_binding.dart';
import 'package:rdl_market_place_app/features/forgotpassword/view/forgot_pass_screen.dart';
import 'package:rdl_market_place_app/features/home/bindings/home_binding.dart';
import 'package:rdl_market_place_app/features/home/view/home_screen.dart';
import 'package:rdl_market_place_app/features/login/bindings/login_binding.dart';
import 'package:rdl_market_place_app/features/login/view/login_screen.dart';
import 'package:rdl_market_place_app/features/resetpassword/bindings/reset_password_binding.dart';
import 'package:rdl_market_place_app/features/resetpassword/view/reset_password_screen.dart';
import 'package:rdl_market_place_app/features/signup/bindings/signup_binding.dart';
import 'package:rdl_market_place_app/features/signup/view/signup_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static String initial = Utils.isLogin() ? Routes.bottomBar : Routes.login;

  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => const SignupScreen(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.forgotPassword,
      page: () => const ForgotPassScreen(),
      binding: ForgotPassBinding(),
    ),
    GetPage(
      name: Routes.resetPassword,
      page: () => const ResetPasswordScreen(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: Routes.bottomBar,
      page: () => BottomBarScreen(),
      binding: BottomBarBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
