import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/extension/for_context.dart';
import 'package:flutter_web_deshboard/core/routers/routes.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';
import 'package:flutter_web_deshboard/core/utils.dart';
import 'package:flutter_web_deshboard/presentation/components/responsiveness.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/custom_text.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: context.w / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    const Flexible(
                      child: CustomText(
                          text: "Dash",
                          size: 20,
                          weight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                    SizedBox(width: context.w / 48),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          Divider(color: AppColors.colorGrey.withOpacity(.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItemRoutes
                .map((item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () {
                      if (item.route == authenticationPageRoute) {
                        Get.offAllNamed(authenticationPageRoute);
                        menuController
                            .changeActiveItemTo(overviewPageDisplayName);
                      }
                      if (!menuController.isActive(item.name)) {
                        menuController.changeActiveItemTo(item.name);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        Get.offAllNamed(item.route);
                        navigationController.navigateTo(item.route);
                      }
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}
