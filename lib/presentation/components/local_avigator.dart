import 'package:flutter/cupertino.dart';
import 'package:flutter_web_deshboard/core/routers/router.dart';
import 'package:flutter_web_deshboard/core/routers/routes.dart';
import 'package:flutter_web_deshboard/core/utils.dart';

Navigator localNavigator() =>   Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );



