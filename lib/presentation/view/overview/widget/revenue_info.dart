import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';

class RevenueInfo extends StatelessWidget {
  final String title;
  final String amount;
  const RevenueInfo({super.key, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: "$title \n\n",
                style: const TextStyle(color: AppColors.colorGrey, fontSize: 16)),
            TextSpan(
                text: "\$ $amount",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ])),
    );
  }
}
