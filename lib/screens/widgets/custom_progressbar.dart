import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget customProgressBar(
    double padding,
    bool animation,
    int duration,
    double height,
    var percent,
    double radius,
    double lerp
    ){
  return LinearPercentIndicator(
      padding: EdgeInsets.fromLTRB(padding, padding, padding, padding),
      animation: animation,
      animationDuration: duration,
      lineHeight: height,
      percent: percent,
      progressColor: const Color(0xFF2B88D8),
      backgroundColor: const Color(0x772B88D8),
      barRadius: Radius.lerp(
        Radius.circular(radius), // Starting radius (a)
        Radius.circular(radius), // Ending radius (b)
        lerp)
  );
}










//
// adding: EdgeInsets.zero,
// animation: true,
// animationDuration: 750,
// lineHeight: 15,
// percent: Utils.targetPercent / 100,
// progressColor: const Color(0xFF2B88D8),
// backgroundColor: const Color(0x772B88D8),
// barRadius: Radius.lerp(
// const Radius.circular(4), // Starting radius (a)
// const Radius.circular(4), // Ending radius (b)
// .0, )// Inter