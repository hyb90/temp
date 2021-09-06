import 'package:fensterlieferant/constants/controllers.dart';
import 'package:fensterlieferant/routing/router.dart';
import 'package:fensterlieferant/routing/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() =>   Navigator(
  key: navigationController.navigatorKey,
  onGenerateRoute: generateRoute,
  initialRoute: homePageRoute,
);
