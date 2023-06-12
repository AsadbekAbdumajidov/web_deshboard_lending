import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/routers/routes.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';
import 'package:flutter_web_deshboard/layout.dart';
import 'package:flutter_web_deshboard/presentation/controllers/menu_controller.dart';
import 'package:flutter_web_deshboard/presentation/controllers/navigation_controller.dart';
import 'package:flutter_web_deshboard/presentation/view/404/error.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'presentation/view/authentication/authentication.dart';

void main() {
  Get.put(CustomMenuController());
  Get.put(CustomNavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: authenticationPageRoute,
        unknownRoute: GetPage(name: '/auth', page: () => PageNotFound(), transition: Transition.fadeIn),
        getPages: [
        GetPage(name: rootRoute, page: () {
          return SiteLayout();
        }),
        GetPage(name: authenticationPageRoute, page: () => const AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.black
        ),
            pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      }
    ),
        primarySwatch: Colors.blue,
      ),
      home: const AuthenticationPage(),
    );
  }
}
