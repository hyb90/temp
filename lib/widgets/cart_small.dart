import 'package:fensterlieferant/constants/style.dart';
import 'package:fensterlieferant/helpers/responsiveness.dart';
import 'package:flutter/material.dart';
class CartSmall extends StatelessWidget {
  final String value;
  const CartSmall({Key key,this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width:!ResponsiveWidget.isSmallScreen(context)? kToolbarHeight*3:kToolbarHeight*2,
      height:!ResponsiveWidget.isSmallScreen(context)? kToolbarHeight*1.5 : kToolbarHeight,
      decoration: BoxDecoration(
        border: Border.all(
          color: windowDark.withOpacity(0.5),
          width: 2,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.shopping_cart,color: windowLight,size:!ResponsiveWidget.isSmallScreen(context)? kToolbarHeight*0.5 :kToolbarHeight*0.3 ,),
              Row(
                children: [
                  Text(value, style: TextStyle(color: light,fontSize: !ResponsiveWidget.isSmallScreen(context)? kToolbarHeight :kToolbarHeight*0.7)),
                  Align( alignment:Alignment.bottomCenter,child: Text('EUR', style: TextStyle(color: light,fontSize:12)))
                ],
              ),
            ],
          )
      ),
    );
  }
}
