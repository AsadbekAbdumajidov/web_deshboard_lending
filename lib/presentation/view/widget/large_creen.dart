import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/presentation/components/local_avigator.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SideMenu()),
        Expanded(
            flex: 5,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: localNavigator()))
      ],
    );
  }
}
