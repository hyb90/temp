import 'package:flutter/material.dart';
import 'package:fensterlieferant/constants/controllers.dart';
import 'package:get/get.dart';
import 'package:fensterlieferant/constants/style.dart';

import 'custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
    final String itemName;
  final Function onTap;
  const HorizontalMenuItem({ Key key, this.itemName, this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
                  hoverColor: Colors.transparent,
                  onTap: onTap,
                  onHover: (value){
                    value ?
                    menuController.onHover(itemName) : menuController.onHover("not hovering");
                  },
                  child: Obx(() => Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if(!menuController.isActive(itemName))
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:15 ),
                          child: CustomText(text: itemName , color: menuController.isHovering(itemName) ? dark : windowLight,),
                        )
                        else
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:15 ),
                          child: CustomText(text: itemName , color:  dark , size: 18, weight: FontWeight.bold,),
                        )

                      ],
                    ),
                  ))
                );
  }
}