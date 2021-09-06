import 'package:fensterlieferant/constants/style.dart';
import 'package:fensterlieferant/helpers/responsiveness.dart';
import 'package:flutter/material.dart';
class MenuButton extends StatelessWidget {
  final Function onPressed;
  const MenuButton({Key key,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width:!ResponsiveWidget.isSmallScreen(context)? kToolbarHeight*1.5:kToolbarHeight,
      height:!ResponsiveWidget.isSmallScreen(context)? kToolbarHeight*1.5:kToolbarHeight,
      decoration: BoxDecoration(
        border: Border.all(
          color: windowDark.withOpacity(0.5),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          new BoxShadow(
            color: windowLight.withOpacity(0.3),
            offset: new Offset(5.0, 5.0),
          ),
        ],
      ),
      child: Center(
          child: IconButton(color: light,icon: Icon(Icons.menu),iconSize: kToolbarHeight*0.5, onPressed: onPressed
          ),
      ),
    );
  }
}
