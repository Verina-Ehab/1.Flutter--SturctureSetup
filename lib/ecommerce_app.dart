import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/features/onboarding/presentation/onboarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/sizes.dart';
import 'core/routing/app_router.dart';
import 'core/themes/theme.dart';

class EcommerceApp extends StatelessWidget {
  final AppRouter appRouter;
  final String initialRoute;
  const EcommerceApp({
    super.key,
    required this.appRouter, required this.initialRoute,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: designSize,
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-commerce',
        themeMode: ThemeMode.system,
        theme: AppThemeManager.lightTheme,
        darkTheme: AppThemeManager.darkTheme,
        onGenerateRoute: appRouter.generateRoute,
        // initialRoute: initialRoute,
        home: const OnboardingScreen(),
      ),
    );
  }
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Title',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
      body: Container(),
    );
  }
}
