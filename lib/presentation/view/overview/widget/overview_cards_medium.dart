import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/extension/for_context.dart';
import 'package:flutter_web_deshboard/presentation/view/overview/widget/info_card.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  const OverviewCardsMediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Rides in progress",
              value: "7",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(width: context.w / 64),
            InfoCard(
              title: "Packages delivered",
              value: "17",
              topColor: Colors.lightGreen,
              onTap: () {},
            ),
          ],
        ),
        SizedBox(height: context.h / 64),
        Row(
          children: [
            InfoCard(
              title: "Cancelled delivery",
              value: "3",
              topColor: Colors.redAccent,
              onTap: () {},
            ),
            SizedBox(width: context.w / 64),
            InfoCard(
              title: "Scheduled deliveries",
              value: "32",
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
