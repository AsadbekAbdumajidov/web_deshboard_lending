// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/presentation/components/local_avigator.dart';
import 'package:flutter_web_deshboard/presentation/components/responsiveness.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/large_creen.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/side_menu.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: const Drawer(child: SideMenu()),
        body:  ResponsiveWidget(
          largeScreen: const LargeScreen(),
          smallScreen: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          )
        ));
  }
}
