import 'package:flutter/material.dart';
import 'package:fensterlieferant/helpers/local_navigator.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: localNavigator(),
    );
  }
}