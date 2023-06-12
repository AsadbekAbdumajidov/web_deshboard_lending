// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/extension/for_context.dart';
import 'info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
            isActive: true,
          ),
          SizedBox(height: context.w / 64),
          InfoCardSmall(
            title: "Packages delivered",
            value: "17",
            onTap: () {},
          ),
          SizedBox(height: context.w / 64),
          InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            onTap: () {},
          ),
          SizedBox(height: context.w / 64),
          InfoCardSmall(
            title: "Scheduled deliveries",
            value: "32",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
