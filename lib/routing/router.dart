
import 'package:fensterlieferant/pages/fenster/fenster.dart';
import 'package:fensterlieferant/pages/fliegengitter/fliegengitter.dart';
import 'package:fensterlieferant/pages/hebeschiebeanlagen/hebeschiebeanlagen.dart';
import 'package:fensterlieferant/pages/home/home.dart';
import 'package:fensterlieferant/pages/konfigurator/konfigurator.dart';
import 'package:fensterlieferant/pages/rollladen/rollladen.dart';
import 'package:fensterlieferant/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case homePageRoute:
      return _getPageRoute(Home());
    case fensterPageRoute:
      return _getPageRoute(Fenster());
    case konfigPageRoute:
      return _getPageRoute(Konfigurator());
    case rollladenPageRoute:
      return _getPageRoute(Rollladen());
    case hebeschiebeanlagenPageRoute:
      return _getPageRoute(Hebeschiebeanlagen());
    case fliegengitterPageDisplayName:
      return _getPageRoute(Fliegengitter());
    default:
      return _getPageRoute(Home());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}