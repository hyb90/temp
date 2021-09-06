import 'package:fensterlieferant/helpers/responsiveness.dart';
import 'package:fensterlieferant/widgets/cart_small.dart';
import 'package:fensterlieferant/widgets/custom_menue_button.dart';
import 'package:fensterlieferant/widgets/top_menu.dart';
import 'package:flutter/material.dart';
import 'package:fensterlieferant/constants/style.dart';

AppBar topNavigationBar(BuildContext context,GlobalKey<ScaffoldState> key) =>
    AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: kToolbarHeight*3,
        title: ResponsiveWidget.isLargeScreen(context) ?Container(
          width: double.infinity,
          child: Wrap(
            alignment:WrapAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Image.asset("assets/icons/logo.png", height: kToolbarHeight*2,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kToolbarHeight*.75),
                child: TopMenu(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CartSmall(value: '0',),
              ),
            ],
          ),
        ):
        ResponsiveWidget.isSmallScreen(context)?Container(
          width: double.infinity,
          child: Wrap(
            alignment:WrapAlignment.spaceBetween,
            children: [
              Image.asset("assets/icons/logo.png", height: kToolbarHeight,),
              Wrap(
                children: [
                  MenuButton(onPressed: (){key.currentState.openDrawer();},),
                  SizedBox(width: 5,),
                  CartSmall(value: '0',)
                ],
              ),
            ],
          ),
        ): Column(
          children: [
            Container(
              width: double.infinity,
              child: Wrap(
                alignment:WrapAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset("assets/icons/logo.png", height: kToolbarHeight*2,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CartSmall(value: '0',),
                  ),
                ],
              ),
            ),
            TopMenu(),
          ],
        ),
        iconTheme: IconThemeData(color: dark),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      );