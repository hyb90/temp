import 'package:fensterlieferant/controllers/appbar_controller.dart';
import 'package:fensterlieferant/controllers/menu_controller.dart';
import 'package:fensterlieferant/controllers/navigation_controller.dart';
import 'package:fensterlieferant/layout.dart';
import 'package:fensterlieferant/pages/404/error.dart';
import 'package:fensterlieferant/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/style.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  Get.put(AppBarController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: homePageRoute,
      unknownRoute: GetPage(name: '/not-found', page: () => PageNotFound(), transition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: () {
          return SiteLayout();
        }),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Fensterlieferant',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(
            bodyColor: Colors.black
        ),
        pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            }
        ),
        primarySwatch: Colors.blue,
      ),
      // home: AuthenticationPage(),
    );
  }
}
