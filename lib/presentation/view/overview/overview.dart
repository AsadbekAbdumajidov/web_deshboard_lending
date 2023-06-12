// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/utils.dart';
import 'package:flutter_web_deshboard/presentation/components/responsiveness.dart';
import 'package:flutter_web_deshboard/presentation/view/overview/widget/overview_cards_large.dart';
import 'package:flutter_web_deshboard/presentation/view/overview/widget/overview_cards_medium.dart';
import 'package:flutter_web_deshboard/presentation/view/overview/widget/overview_cards_small.dart';
import 'package:flutter_web_deshboard/presentation/view/overview/widget/revenue_section_large.dart';
import 'package:flutter_web_deshboard/presentation/view/overview/widget/revenue_section_small.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/custom_text.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Obx(() => Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      weight: FontWeight.bold,
                    ),
                  )
                ],
              )),
          Expanded(
              child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  const OverviewCardsMediumScreen()
                else
                  const OverviewCardsLargeScreen()
              else
                OverviewCardsSmallScreen(),
              if (!ResponsiveWidget.isSmallScreen(context))
                RevenueSectionLarge()
              else
                RevenueSectionSmall(),
                // AvailableDriversTable()
            ],
          )),
        ],
      ),
    );
  }
}
