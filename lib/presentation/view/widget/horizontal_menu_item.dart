import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/extension/for_context.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';
import 'package:flutter_web_deshboard/core/utils.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/custom_text.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const HorizontalMenuItem({super.key, required this.itemName,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? AppColors.colorGrey.withOpacity(.1)
                : AppColors.colorTransparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                  child: Container(
                      width: 6, height: 40, color: AppColors.colorBlack),
                ),
                SizedBox(width: context.w / 80),
                Padding(
                    padding: const EdgeInsets.all(16),
                    child: menuController.returnIconFor(itemName)),
                if (!menuController.isActive(itemName))
                  Flexible(
                    child: CustomText(
                        text: itemName,
                        color: menuController.isHovering(itemName)
                            ? AppColors.colorBlack
                            : AppColors.colorGrey),
                  )
                else
                  Flexible(
                      child: CustomText(
                    text: itemName,
                    color: AppColors.colorBlack,
                    size: 18,
                    weight: FontWeight.bold,
                  ))
              ],
            ),
          )),
    );
  }
}
