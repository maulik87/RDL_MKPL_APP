import 'package:get/route_manager.dart';
import 'package:rdl_market_place_app/core/config/utils.dart';
import 'package:rdl_market_place_app/features/account_setting/bindings/account_setting_binding.dart';
import 'package:rdl_market_place_app/features/account_setting/view/account_setting_screen.dart';
import 'package:rdl_market_place_app/features/bottom_bar/bindings/bottom_bar_binding.dart';
import 'package:rdl_market_place_app/features/bottom_bar/view/bottom_bar_screen.dart';
import 'package:rdl_market_place_app/features/categories/bindings/categories_binding.dart';
import 'package:rdl_market_place_app/features/categories/view/categories_screen.dart';
import 'package:rdl_market_place_app/features/forgotpassword/bindings/forgot_pass_binding.dart';
import 'package:rdl_market_place_app/features/forgotpassword/view/forgot_pass_screen.dart';
import 'package:rdl_market_place_app/features/home/bindings/home_binding.dart';
import 'package:rdl_market_place_app/features/home/view/home_screen.dart';
import 'package:rdl_market_place_app/features/login/bindings/login_binding.dart';
import 'package:rdl_market_place_app/features/login/view/login_screen.dart';
import 'package:rdl_market_place_app/features/my_account/bindings/my_account_binding.dart';
import 'package:rdl_market_place_app/features/my_account/view/my_account_screen.dart';
import 'package:rdl_market_place_app/features/product_details/bindings/product_details_binding.dart';
import 'package:rdl_market_place_app/features/product_details/view/product_details_screen.dart';
import 'package:rdl_market_place_app/features/profile/bindings/profile_binding.dart';
import 'package:rdl_market_place_app/features/profile/view/profile_screen.dart';
import 'package:rdl_market_place_app/features/resetpassword/bindings/reset_password_binding.dart';
import 'package:rdl_market_place_app/features/resetpassword/view/reset_password_screen.dart';
import 'package:rdl_market_place_app/features/search/bindings/search_binding.dart';
import 'package:rdl_market_place_app/features/search/view/search_screen.dart';
import 'package:rdl_market_place_app/features/search_result/bindings/search_result_binding.dart';
import 'package:rdl_market_place_app/features/search_result/view/search_result_screen.dart';
import 'package:rdl_market_place_app/features/signup/bindings/signup_binding.dart';
import 'package:rdl_market_place_app/features/signup/view/signup_screen.dart';
import 'package:rdl_market_place_app/features/sub_categories/bindings/sub_categories_binding.dart';
import 'package:rdl_market_place_app/features/sub_categories/view/sub_categories_screen.dart';

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
    GetPage(
      name: Routes.categories,
      page: () => CategoriesScreen(),
      binding: CategoriesBinding(),
    ),
    GetPage(
      name: Routes.subCategories,
      page: () => SubCategoriesScreen(),
      binding: SubCategoriesBinding(),
    ),
    GetPage(
      name: Routes.productDetails,
      page: () => ProductDetailScreen(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: Routes.search,
      page: () => const SaerchScreen(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: Routes.searchResult,
      page: () => const SaerchResultScreen(),
      binding: SearchResultBinding(),
    ),
    GetPage(
      name: Routes.myAccount,
      page: () => const MyAccountScreen(),
      binding: MyAccountBinding(),
    ),
    GetPage(
      name: Routes.accountSetting,
      page: () => const AccountSettingScreen(),
      binding: AccountSettingBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfileScreen(),
      binding: ProfileBinding(),
    ),
  ];
}
