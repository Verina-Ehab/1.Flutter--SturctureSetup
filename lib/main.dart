import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/core/constants/map_keys.dart';
import 'package:flutter_ecommerce_v1/core/helpers/extensions.dart';
import 'package:flutter_ecommerce_v1/core/helpers/shared_pref_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'ecommerce_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();

  String initialRoute = await getInitialRoute();
  runApp(EcommerceApp(appRouter: AppRouter(), initialRoute: initialRoute));
}

Future<String> getInitialRoute() async {
  bool onboardingComplete =
      await SharedPrefManager.getBool(onboardingCompleteKey) ?? false;
  bool isLoggedIn = await SharedPrefManager.getBool(isLoggedInKey) ?? false;

  String? userToken = await SharedPrefManager.getSecuredString(userTokenKey);

  if (!onboardingComplete) {
    return Routes.onBoardingScreen;
  } else if (!isLoggedIn || userToken.isNullOrEmpty()) {
    return Routes.loginScreen;
  } else {
    return Routes.homeScreen;
  }
}
