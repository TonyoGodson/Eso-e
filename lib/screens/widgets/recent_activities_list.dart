import 'package:flutter/material.dart';

import '../../model/recent_activities_model.dart';
import '../../utils/utils.dart';

class RecentActivitiesList extends StatefulWidget {
  const RecentActivitiesList({Key? key}) : super(key: key);

  @override
  State<RecentActivitiesList> createState() => _RecentActivitiesListState();
}

class _RecentActivitiesListState extends State<RecentActivitiesList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * .76,
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12)
          )
      ),
      child:  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Recent Activities",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF605e5c)),),
              // color: Colors.grey),),
              Container(
                width: 85.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFC7E0F4),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child:  GestureDetector(
                  onTap: (){
                    debugPrint("clicked View All");
                    // Utils.showToast('Clicked View All');
                    // Navigator.of(context).pushNamedAndRemoveUntil(LoginScreen.routeName,
                    //       (route) => false,);
                  },
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text("View All",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF0078D4),
                            fontWeight: FontWeight.w500),)),
                ),)
            ],),
          const Divider(
              thickness: 1.0,
              height: 30.0),
          Container(
              height: MediaQuery.of(context).size.width*.56,
              width: MediaQuery.of(context).size.width,
              // padding: const EdgeInsets.fromLTRB(10, 0, 25, 0),
              color: const Color(0x00EFF6FC),
              child: recentActivitiesList()),
        ],),
    );
  }

  NotificationListener<OverscrollIndicatorNotification> recentActivitiesList() {
    return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
        notification.disallowGlow(); // Disable overscroll effect
        return true;
    },
    child:ListView.builder(
        itemCount: 4/*RecentActivities.recentActivity.length*/,
        itemBuilder: (BuildContext context, int position) {
          var oneActivity = RecentActivities.recentActivity[position];
          return GestureDetector(
            onTap: (){
              Utils.showToast('Clicked the container');
            },
            child: Container(
                color: Colors.transparent,
                height: 55.0,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [Row(children: [
                    CircleAvatar(
                        backgroundColor: const Color(0xFFC7E0F4),
                        child: Text(
                          "${oneActivity.surname?.substring(0, 1)}"
                              "${oneActivity.firstname?.substring(0, 1)}",
                          style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(oneActivity.activity,
                            style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(height: 5),
                        Text("${oneActivity.surname} ${oneActivity.firstname}",
                          style: const TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),),
                      ],
                    ),
                    Expanded(
                        child: Text("${oneActivity.days_date}",
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54))),
                  ]),
                    const SizedBox(height: 10),
                  ],
                )),
          );
        }));
  }
}
