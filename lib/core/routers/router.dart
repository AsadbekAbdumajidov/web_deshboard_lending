import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/routers/routes.dart';
import 'package:flutter_web_deshboard/presentation/view/clients/clients.dart';
import 'package:flutter_web_deshboard/presentation/view/drivers/drivers.dart';
import 'package:flutter_web_deshboard/presentation/view/overview/overview.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverViewPage());
    case driversPageRoute:
      return _getPageRoute(const DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverViewPage());

  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}