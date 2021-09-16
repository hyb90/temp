import 'package:fensterlieferant/constants/style.dart';
import 'package:flutter/material.dart';

List<ConfiguratorStep> steps=[
  ConfiguratorStep(title: 'step1'),
  ConfiguratorStep(title: 'step2'),
  ConfiguratorStep(title: 'step3'),
  ConfiguratorStep(title: 'step4'),
  ConfiguratorStep(title: 'step5'),
  ConfiguratorStep(title: 'step6'),
  ConfiguratorStep(title: 'step7'),
  ConfiguratorStep(title: 'step8'),
  ConfiguratorStep(title: 'step9'),
  ConfiguratorStep(title: 'step10'),
  ConfiguratorStep(title: 'step11'),
];
class Konfigurator extends StatelessWidget {
  const Konfigurator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kToolbarHeight*3),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: steps
          )
        ],
      ),
    );
  }
}

class ConfiguratorStep extends StatelessWidget {
  final String title;
  final Widget icon;
  const ConfiguratorStep({
    this.title,this.icon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: windowDark.withOpacity(0.5),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(3),
      width:MediaQuery.of(context).size.width*.05 ,
      height:MediaQuery.of(context).size.width*.05 ,
        child:Text(title)
    );
  }
}
