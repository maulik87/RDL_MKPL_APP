import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/debug.dart';
import 'package:rdl_market_place_app/core/constants/app_constants.dart';
import 'package:rdl_market_place_app/core/themes/app_theme.dart';
import 'package:rdl_market_place_app/localization/locale_constant.dart';
import 'package:rdl_market_place_app/localization/localizations_delegate.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';

class RDLMarketPlaceApp extends StatefulWidget {
  const RDLMarketPlaceApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<RDLMarketPlaceApp> createState() => _RDLMarketPlaceAppState();
}

class _RDLMarketPlaceAppState extends State<RDLMarketPlaceApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (_, __) {
        return GetMaterialApp(
          navigatorKey: RDLMarketPlaceApp.navigatorKey,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          getPages: AppPages.routes,
          initialRoute: AppPages.initial,
          translations: AppLanguages(),
          fallbackLocale: const Locale(
              LanguageConstant.languageEn, LanguageConstant.countryCodeEn),
          locale: const Locale(LanguageConstant.languageEn),
          defaultTransition: Transition.fade,
          transitionDuration: const Duration(milliseconds: 100),
        );
      },
    );
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        Debug.logE(
            "didChangeDependencies Preference Revoked ${locale.languageCode}");
        Debug.logE(
            "didChangeDependencies GET LOCALE Revoked ${Get.locale!.languageCode}");
        Get.updateLocale(locale);
      });
    });
    super.didChangeDependencies();
  }
}
