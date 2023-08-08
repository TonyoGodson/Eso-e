import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../utils/utils.dart';

class TargetProgress extends StatefulWidget {
  const TargetProgress({Key? key}) : super(key: key);

  @override
  State<TargetProgress> createState() => _TargetProgressState();
}

class _TargetProgressState extends State<TargetProgress> {
  @override
  Widget build(BuildContext context) {
    return
      LinearPercentIndicator(
        padding: EdgeInsets.zero,
        animation: true,
        animationDuration: 750,
        lineHeight: 15,
        percent: Utils.targetPercent / 100,
        progressColor: const Color(0xFF2B88D8),
        backgroundColor: const Color(0x772B88D8),
        barRadius: Radius.lerp(
          const Radius.circular(4), // Starting radius (a)
          const Radius.circular(4), // Ending radius (b)
          .0, )// Interpolation factor)
    );
  }
}
