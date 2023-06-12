import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color? topColor;
  final bool isActive;
  final Function() onTap;

  const InfoCard(
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
        height: 136,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.colorWhite,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 6),
                  color: AppColors.colorGrey.withOpacity(.1),
                  blurRadius: 12),
            ]),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                        color: topColor ?? AppColors.primaryColor, height: 5)),
                
              ],
            ),
            Expanded(child: Container()),
                RichText(
                  
                  text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n",
                        style: TextStyle(
                            fontSize: 16,
                            color: isActive == true
                                ? AppColors.primaryColor
                                : AppColors.colorGrey)),
                    TextSpan(
                        text: value,
                        style: TextStyle(
                            fontSize: 40,
                            color: isActive == true
                                ? AppColors.primaryColor
                                : AppColors.colorBlack)),
                  ]),
                  textAlign: TextAlign.center,
                ),
                Expanded(child: Container()),
          ],
        ),
      ),
    ));
  }
}
