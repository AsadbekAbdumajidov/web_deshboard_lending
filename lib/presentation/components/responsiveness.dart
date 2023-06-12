import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/extension/for_context.dart';
import 'package:flutter_web_deshboard/core/utils.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? smallScreen;
  final Widget? mediumScreen;
  final Widget? customScreen;

  const ResponsiveWidget(
      {super.key,
      required this.largeScreen,
      this.smallScreen,
      this.mediumScreen,
      this.customScreen});

  static bool isSmallScreen(BuildContext context) =>
      context.w < mediumScreenSize;
  static bool isMediumScreen(BuildContext context) =>
      context.w >= mediumScreenSize && context.w < largeScreenSize;
  static bool isLargeScreen(BuildContext context) =>
      context.w >= largeScreenSize;
  static bool isCustomSize(BuildContext context) =>
      context.w <= customScreenSize && context.w >= mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      if (contraints.maxWidth >= largeScreenSize) {
        return largeScreen;
      } else if (contraints.maxWidth < largeScreenSize && contraints.maxWidth >= mediumScreenSize) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
