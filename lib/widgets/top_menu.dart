import 'package:flutter/material.dart';
import 'package:fensterlieferant/constants/controllers.dart';
import 'package:fensterlieferant/helpers/responsiveness.dart';
import 'package:fensterlieferant/routing/routes.dart';
import 'package:fensterlieferant/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: sideMenuItemRoutes
          .map((item) => SideMenuItem(
              itemName: item.name,
              onTap: () {
                if (!menuController.isActive(item.name)) {
                  menuController.changeActiveItemTo(item.name);
                  if(ResponsiveWidget.isSmallScreen(context))
                  Get.back();
                  navigationController.navigateTo(item.route);
                }
              }))
          .toList(),
    );
  }
}