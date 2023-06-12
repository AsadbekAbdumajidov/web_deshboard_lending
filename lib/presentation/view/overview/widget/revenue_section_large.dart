// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';
import 'package:flutter_web_deshboard/presentation/view/overview/widget/bar_chart.dart';
import 'package:flutter_web_deshboard/presentation/view/overview/widget/revenue_info.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/custom_text.dart';

class RevenueSectionLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: AppColors.colorGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        border: Border.all(color: AppColors.colorGrey, width: .5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomText(
                  text: "Revenue Chart",
                  size: 20,
                  weight: FontWeight.bold,
                  color: AppColors.colorGrey,
                ),
                SizedBox(
                    width: 600,
                    height: 200,
                    child: SimpleBarChart.withSampleData()),
              ],
            ),
          ),
          Container(
            width: 1,
            height: 120,
            color: AppColors.colorGrey,
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    RevenueInfo(title: "Today's revenue", amount: "230"),
                    RevenueInfo(title: "Last 7 days", amount: "1,100"),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    RevenueInfo(title: "Last 30 days", amount: "3,230"),
                    RevenueInfo(title: "Last 12 months", amount: "11,300"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
