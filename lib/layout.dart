import 'package:fensterlieferant/constants/controllers.dart';
import 'package:fensterlieferant/widgets/large_screen.dart';
import 'package:fensterlieferant/widgets/side_menu.dart';
import 'package:fensterlieferant/widgets/top_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helpers/local_navigator.dart';
import 'helpers/responsiveness.dart';
class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: appBarController.position>120||menuController.activeItem.value!='Home'?false: true,
        appBar:  topNavigationBar(context, scaffoldKey),
        drawer: Drawer(
          child: SideMenu(),
        ),
        body: ResponsiveWidget(
            largeScreen: LargeScreen(),
            smallScreen: localNavigator()
        ),
      );
    });

  }
}