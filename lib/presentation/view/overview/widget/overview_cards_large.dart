import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/extension/for_context.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';
import 'package:flutter_web_deshboard/presentation/view/overview/widget/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InfoCard(
          title: "Rides in progress",
          value: "7",
          onTap: () {},
          topColor: AppColors.colorOrange,
        ),
        SizedBox(width: context.w / 64),
        InfoCard(
          title: "Packages delivered",
          value: "17",
          topColor: AppColors.colorGreen,
          onTap: () {},
        ),
        SizedBox(width: context.w / 64),
        InfoCard(
          title: "Cancelled delivery",
          value: "3",
          topColor: AppColors.colorRed,
          onTap: () {},
        ),
        SizedBox(width: context.w / 64),
        InfoCard(
          title: "Scheduled deliveries",
          value: "32",
          onTap: () {},
        ),
      ],
    );
  }
}
