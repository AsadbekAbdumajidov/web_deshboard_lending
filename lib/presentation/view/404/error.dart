// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/custom_text.dart';

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/error.png", width: 350,),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(text: "Page not found", size: 24, weight: FontWeight.bold,),
            ],
          )
        ],
      ),
    );
  }
}
