// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/utils.dart';
import 'package:flutter_web_deshboard/presentation/components/responsiveness.dart';
import 'package:flutter_web_deshboard/presentation/view/clients/widgets/clients_table.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/custom_text.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ClientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Obx(() => Row(
            children: [Container(
              margin:  EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              child: CustomText(text: menuController.activeItem.value,size: 24,weight: FontWeight.bold,),
            )],
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Clientstable(),
          )),
        ],
      ),
    );
  }
}
