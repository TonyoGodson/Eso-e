import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'o_list1.dart';
import 'o_list2.dart';

class OverviewList extends StatefulWidget {
  const OverviewList({Key? key}) : super(key: key);

  @override
  State<OverviewList> createState() => _OverviewListState();
}

class _OverviewListState extends State<OverviewList> {
  @override
  Widget build(BuildContext context) {
    return  NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
      notification.disallowGlow(); // Disable overscroll effect
      return true;
    },
    child:ListView.builder(
        itemCount: 10,
        // physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index){
    if (index == 0 && Utils.loans > 0) {
         return
          const OList1();
    } else {
      return const OList2();
    }}));
  }


}
