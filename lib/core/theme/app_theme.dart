// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
    textTheme:
        GoogleFonts.mulishTextTheme(Theme.of(context as BuildContext).textTheme)
            .apply(bodyColor: AppColors.colorBlack),
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
    }),
    primaryColor: Colors.blue);
