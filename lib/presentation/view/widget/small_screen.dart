import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/presentation/components/local_avigator.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 16),
      child: localNavigator());
  }
}
