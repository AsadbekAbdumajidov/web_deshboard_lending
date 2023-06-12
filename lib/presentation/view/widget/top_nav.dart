import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';
import 'package:flutter_web_deshboard/presentation/components/responsiveness.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset("assets/icons/logo.png", width: 28),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: AppColors.colorGrey,
              )),
      title: Row(
        children: [
          const Visibility(
              child: CustomText(
            text: "Dash",
            color: AppColors.colorGrey,
            weight: FontWeight.bold,
          )),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: AppColors.colorBlack.withOpacity(0.5),
              )),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: AppColors.colorBlack.withOpacity(0.5),
                  )),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.primaryColor,
                        border:
                            Border.all(color: AppColors.light, width: 2)),
                  ))
            ],
          ),
          Container(height: 22, width: 1, color: AppColors.colorGrey),
          const SizedBox(width: 24),
          const CustomText(text: "Santos Enoque", color: AppColors.colorGrey),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: const EdgeInsets.all(1),
              margin: const EdgeInsets.all(1),
              child: const CircleAvatar(
                  backgroundColor: AppColors.colorWhite,
                  child:
                      Icon(Icons.person_outline, color: AppColors.colorBlack)),
            ),
          )
        ],
      ),
      iconTheme: const IconThemeData(color: AppColors.colorBlack),
      backgroundColor: AppColors.colorTransparent,
    );
