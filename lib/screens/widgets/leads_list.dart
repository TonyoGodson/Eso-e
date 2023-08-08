import 'package:flutter/material.dart';

import '../../model/leads_list_model.dart';
import '../dashboard/bottom_nav_screens/lead_details_screen.dart';


class LeadsList extends StatefulWidget {
  const LeadsList({Key? key}) : super(key: key);

  @override
  State<LeadsList> createState() => _LeadsListState();
}

class _LeadsListState extends State<LeadsList> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowIndicator(); // Disable overscroll effect
          return true;
        },
        child:ListView.builder(
            itemCount: LeadListModel.oneLead.length,
            itemBuilder: (BuildContext context, int index){
              var oneLead = LeadListModel.oneLead[index];
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context,
                      LeadDetailsScreen.routeName,
                      arguments: oneLead);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * .17,
                  color: Colors.transparent,
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                                Stack(
                                    children: [CircleAvatar(
                                      radius: 22.0,
                                      backgroundColor: const Color(0xFFC7E0F4),
                                      child: Text(
                                        "${oneLead.surname?.substring(0, 1)}"
                                            "${oneLead.firstname?.substring(0, 1)}",
                                        style: const TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF2B88D8)),),)]),
                                const SizedBox(width: 10.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${oneLead.surname} ${oneLead.firstname}",
                                      style: const TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                    const SizedBox(height: 5),
                                    Text("${oneLead.phone}"),
                                  ],),]),
                          Row(children: [
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.175,
                              height: MediaQuery.of(context).size.width * 0.05,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFC7E0F4)),
                              child: Text("${oneLead.acct_type}", style: const TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xFF2B88D8),
                                  fontWeight: FontWeight.w500))),
                            Container(
                              margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                              width: MediaQuery.of(context).size.width * .098,
                              height: MediaQuery.of(context).size.width * .098,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: const Color(0xFFE1DFDD))),
                              child: const Icon(
                                Icons.more_horiz_sharp,
                                color: Color(0xFF605E5C),
                                size: 22.0,))])])])));}));
  }
}
