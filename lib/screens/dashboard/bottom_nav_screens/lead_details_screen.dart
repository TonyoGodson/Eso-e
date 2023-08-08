// ignore_for_file: deprecated_member_use

import 'package:eso_e/model/clients_list_model.dart';
import 'package:eso_e/screens/widgets/appbar.dart';
import 'package:eso_e/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../../model/leads_list_model.dart';
import '../../interactions/client_interactions/client_recent_interactions_screen.dart';
import '../../widgets/client_tab.dart';
import '../../widgets/lead_tab.dart';

class LeadDetailsScreen extends StatefulWidget {
  static const routeName = '/lead_details_screen';
  const LeadDetailsScreen({Key? key}) : super(key: key);

  @override
  State<LeadDetailsScreen> createState() => _LeadDetailsScreenState();
}


class _LeadDetailsScreenState extends State<LeadDetailsScreen> {

  bool isVisible = Utils.isVisible;
  int checkUser = 0;


  Future toggleVisibility() async {
    setState(() {
      isVisible = false;
    });
    await Future.delayed(const Duration(milliseconds: 100));
    // Navigator.of(context).pushNamed(RecentInteractionsScreen.routeName);
  }

  Future toggleVisibility2() async {
    setState(() {
      isVisible = true;
    });
    // await Future.delayed(const Duration(seconds: 1));
    // Navigator.of(context).pushNamed(RecentInteractionsScreen.routeName);
  }


  @override
  Widget build(BuildContext context) {
    final leadDetail = ModalRoute.of(context)?.settings.arguments as LeadListModel;
    return
      // WillPopScope(
      // onWillPop: () async {
      //   Utils.setBackPressed();
      //   return false;
      // }, child:
      Scaffold(
          appBar: AppBar(
              toolbarHeight: 70.0,
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Colors.grey[100],
              flexibleSpace:AnimatedOpacity(
                opacity: isVisible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: AppBarWidget(
                  context: context,
                  onTap: navTo,
                  shape: BoxShape.rectangle,
                  color: const Color(0xFFEDEBE9),
                  color2: const Color(0xFF605E5C),
                  content: "",
                  content2: "",
                  content3: "LAGOS BRANCH",
                  c_width: 0.3,
                  c_height: 0.08,
                  radius: 12.0,
                  left: 0.0,
                  top: 10.0,
                  right: 15.0,
                  bottom: 0.0,
                  backBtnHt: 50.0,
                  backBtnWt: 50.0,
                  backBtnRd: 15.0,
                  iconSize: 30.0,
                  padding: 0.0,
                  toolbarHt: 77.0,
                  sizedBoxHt: 10.0,
                  animation: false,
                  duration: 0,
                  height: 0.0,
                  percent: 0.0,
                  progressRadius: 0.0,
                  lerp: 0.0,
                  isCurved: false,
                  backPaddingLeft: 15.0,
                  backPaddingTop: 0.0,
                  backPaddingRight: 0.0,
                  backPaddingBottom: 0.0,
                ),
              )),

          backgroundColor: Colors.grey[100],
          body: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children:  [
// ===============Client Details Container=========================
                AnimatedOpacity(
                  opacity: isVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * .6,
                    margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0),
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 20.0),
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("${leadDetail.pic}"),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "${leadDetail.firstname} ${leadDetail.surname}",
                              style: const TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),),
                            const SizedBox(height: 4),
                            Text("${leadDetail.acct_type}".toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54),),
                            const SizedBox(height: 10),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * .25,
                              height: MediaQuery.of(context).size.width * .07,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: leadDetail.status != 0
                                      ? const Color(0xFFDFF6DD)
                                      : const Color(0xFFE1DFDD)),
                              child: leadDetail.status != 0
                                  ? const Text("Active",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF107C10)))
                                  : const Text("Dormant",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),),)
                          ],),
                        const VerticalDivider(
                            width: 10,
                            thickness: 1.5,
                            color: Color(0xFFE1DFDD)
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${leadDetail.customer_type}",
                                style: const TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            const SizedBox(height: 4),
                            const Text("CUSTOMER TYPE",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54)),
                            const SizedBox(height: 20),
                            Text("${leadDetail.activatn_date}",
                                style: const TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            const SizedBox(height: 4),
                            const Text("ACTIVATION DATE",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54)),
                            const SizedBox(height: 20),
                            Text("${leadDetail.acct_officer}",
                                style: const TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            const SizedBox(height: 4),
                            const Text("ACCOUNT OFFICER",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54)),
                            const SizedBox(height: 20),
                            Text("${leadDetail.customer_id}",
                                style: const TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            const SizedBox(height: 4),
                            const Text("CUSTOMER ID",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54)),
                          ],)
                      ],),
                  ),
                ),
// ===============Deactivate, Resign Officer Padding/Row===========  Author: @T4Tonyo
                AnimatedOpacity(
                  opacity: isVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: controlUser,
                            child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.37,
                                height: MediaQuery.of(context).size.width * 0.11,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: checkUser == 0 ? const Color(0x22C70505)
                                        : const Color(0x2200FF00)),
                                child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      checkUser == 0 ? (const Text("Activate User", style: TextStyle(color: Color(0xFFC70505))))
                                      : (const Text("Deactivate User", style: TextStyle(color: Color(0xFF107C10)))),
                                      const SizedBox(width: 5.0),
                                      SvgPicture.asset('asset/svg_icons/lock_icon.svg',
                                        color: checkUser == 0 ? const Color(0xFFC70505) : const Color(0xFF107C10),
                                        height: 20.0, width: 50.0,)
                                    ])),
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.37,
                              height: MediaQuery.of(context).size.width * 0.11,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: const Color(0x222D88D8)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Resign Officer", style: TextStyle(color: Color(0xFF2D88D8))),
                                    const SizedBox(width: 5.0),
                                    SvgPicture.asset('asset/svg_icons/client_icon.svg',
                                      color:  const Color(0xFF2D88D8),
                                      height: 20.0,
                                      width: 50.0,
                                    ),
                                  ])),
                          Container(
                            width: MediaQuery.of(context).size.width * .105,
                            height: MediaQuery.of(context).size.width * .105,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xFFE1DFDD)
                                )
                            ),
                            child: const Icon(Icons.more_horiz, color: Color(0xFF605E5C),),
                          )
                        ]),
                  ),
                ),
// ==================Tabs Container================================
                const SizedBox(height: 10.0),
                AnimatedOpacity(
                    opacity: isVisible ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    child: LeadTab(onVisibilityChanged: (){})),
                    // child: ClientTab(onVisibilityChanged: toggleVisibility)),
              ])
        // ),
      );
  }
  void navTo() {
    Navigator.of(context).pop();
  }
  void controlUser(){
    debugPrint("control User Tapped $checkUser");
    checkUser == 0 ? checkUser = 1 : checkUser = 0;
    setState(() {});
  }
}