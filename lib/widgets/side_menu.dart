import 'package:flutter/material.dart';
import 'package:fensterlieferant/constants/controllers.dart';
import 'package:fensterlieferant/constants/style.dart';
import 'package:fensterlieferant/helpers/responsiveness.dart';
import 'package:fensterlieferant/routing/routes.dart';
import 'package:fensterlieferant/widgets/custom_text.dart';
import 'package:fensterlieferant/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
            color: light,
            child: ListView(
              children: [
                if(!ResponsiveWidget.isLargeScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(width: _width / 48),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Image.asset("assets/icons/logo.png",height: kToolbarHeight,),
                        ),
                        Flexible(
                          child: CustomText(
                            text: "fensterlieferant",
                            size: 18,
                            weight: FontWeight.bold,
                            color: dark,
                          ),
                        ),
                        SizedBox(width: _width / 48),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                    Divider(color: lightGrey.withOpacity(.1), ),

                Column(
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
                )
              ],
            ),
          );
  }
}