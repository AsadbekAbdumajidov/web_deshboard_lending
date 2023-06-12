import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final Color? topColor;
  final bool isActive;
  final Function() onTap;
  const InfoCardSmall(
      {super.key,
      required this.title,
      required this.value,
      this.topColor,
       this.isActive = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: AppColors.colorWhite,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color:
                      isActive ? AppColors.primaryColor : AppColors.colorGrey,
                  width: .5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  text: title,
                  size: 24,
                  weight: FontWeight.w300,
                  color:
                      isActive ? AppColors.primaryColor : AppColors.colorGrey),
              CustomText(
                  text: value,
                  size: 24,
                  weight: FontWeight.bold,
                  color:
                      isActive ? AppColors.primaryColor : AppColors.colorBlack)
            ],
          )),
    ));
  }
}
