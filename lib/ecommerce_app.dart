import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/sizes.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/themes/theme.dart';

class EcommerceApp extends StatelessWidget {
  final AppRouter appRouter;
  const EcommerceApp({super.key, required this.appRouter});

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
        // initialRoute: Routes.onBoardingScreen ,
        home: const MyHomePage(),
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
