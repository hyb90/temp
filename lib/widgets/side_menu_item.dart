import 'package:fensterlieferant/constants/controllers.dart';
import 'package:fensterlieferant/helpers/responsiveness.dart';
import 'package:fensterlieferant/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:fensterlieferant/widgets/horizontal_menu_item.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const SideMenuItem({ Key key,@required this.itemName,@required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return ResponsiveWidget.isSmallScreen(context)||appBarController.position.value>120?VerticalMenuItem(itemName: itemName, onTap: onTap,):HorizontalMenuItem(itemName: itemName, onTap: onTap,);
    }
  }
