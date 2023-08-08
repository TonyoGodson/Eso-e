

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../widgets/appbar.dart';
import '../../widgets/o_list1.dart';
import '../../widgets/o_list2.dart';
import '../../widgets/overview_list.dart';
import 'lead_new_interaction_screen.dart';

class LeadRecentInteractionsScreen extends StatefulWidget {
  static const routeName = '/lead_recent_interactions_screen';
  final VoidCallback CDSVisibility;
  const LeadRecentInteractionsScreen({Key? key, required this.CDSVisibility}) : super(key: key);

  @override
  State<LeadRecentInteractionsScreen> createState() => _LeadRecentInteractionsScreenState();
}

class _LeadRecentInteractionsScreenState extends State<LeadRecentInteractionsScreen> {
  int buttonNo = 0;
  bool isVisible = true;
  double bkBtnHt = 50.0;
  double bkBtnWt = 50.0;

  @override
  void initState(){
    super.initState();
    _changeSize();
  }

  void _changeSize() async {
    Future.delayed(const Duration(milliseconds: 50), () {
      setState(() {
        bkBtnHt = 30.0;
        bkBtnWt = 30.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70.0,
        backgroundColor: Colors.grey[100],
        automaticallyImplyLeading: false,
        flexibleSpace: AppBarWidget(
          context: context,
          onTap: navTo,
          shape: BoxShape.rectangle,
          color: const Color(0x2F2D88D8),
          color2: const Color(0xFF2D88D8),
          content: "Recent Interactions",
          content2: "",
          content3: "",
          c_width: 0.0,
          c_height: 0.0,
          toolbarHt: 77.0,
          sizedBoxHt: 10.0,
          radius: 0.0,
          left: 0.0,
          top: 0.0,
          right: 0.0,
          bottom: 0.0,
          backBtnHt: bkBtnHt,
          backBtnWt: bkBtnWt,
          backBtnRd: 8.0,
          iconSize: 22.0,
          padding: 0.0,
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
          backPaddingBottom: 10.0,
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(LeadNewInteractionScreen.routeName);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF2D88D8)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.transparent),
                            child: const Padding(
                                padding: EdgeInsets.all(1.5),
                                child: Icon(Icons.add, color: Colors.white, size: 16.0,))),
                        const SizedBox(width: 10.0),
                        AnimatedOpacity(
                            opacity: isVisible ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            child: const Text("New Interaction", style: TextStyle(color: Colors.white),))]),
                ),
              )),
          const SizedBox(height: 15.0),
          Row(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      buttonNo = 0;
                      debugPrint("all tapped");
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: MediaQuery.of(context).size.width * 0.09,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: buttonNo == 0 ? const Color(0xFF2D88D8) : const Color(0xFFD6D6D6),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                        color: buttonNo == 0 ? const Color(0xFF2D88D8) : const Color(0x00FFFFFF)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("All  ",
                            style: TextStyle(color: buttonNo == 0 ? Colors.white : Colors.black,
                                fontWeight: FontWeight.w500),),
                          Text("${Utils.loans > 99 ? "99+" : Utils.loans}",
                            style:  const TextStyle(color: Colors.grey),),]),
                  ),
                ),
                const SizedBox(width: 10.0),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      buttonNo = 1;
                      debugPrint("open tapped");
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.09,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: buttonNo == 1 ? const Color(0xFF2D88D8) : const Color(0xFFD6D6D6),
                            width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                        color: buttonNo == 1 ? const Color(0xFF2D88D8) : const Color(0x00FFFFFF)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Open  ", style: TextStyle(color: buttonNo == 1 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.w500),),
                          Text("${Utils.loans > 99 ? "99+" : Utils.loans}",
                            style:  const TextStyle(color: Colors.grey),),]),
                  ),
                ),
                const SizedBox(width: 10.0),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      buttonNo = 2;
                      debugPrint("resolved tapped");
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.width * 0.09,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: buttonNo == 2 ? const Color(0xFF2D88D8) : const Color(0xFFD6D6D6),
                            width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                        color: buttonNo == 2 ? const Color(0xFF2D88D8) : const Color(0x00FFFFFF)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Resolved  ", style: TextStyle(color: buttonNo == 2 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.w500),),
                          Text("${Utils.loans > 99 ? "99+" : Utils.loans}",
                            style:  TextStyle(color: Color(buttonNo == 2 ? 0xFFE1DFDD : 0xFF454545)),),]),
                  ),
                ),
                // GestureDetector(
                //   onTap: (){
                //     setState(() {
                //       _changeSize();
                //       debugPrint("change tapped");
                //     });
                //   },
                //   child: Container(
                //     width: MediaQuery.of(context).size.width * 0.15,
                //     height: MediaQuery.of(context).size.width * 0.09,
                //     decoration: BoxDecoration(
                //         border: Border.all(
                //             color: buttonNo == 2 ? const Color(0xFF2D88D8) : const Color(0xFFD6D6D6),
                //             width: 1.5),
                //         borderRadius: BorderRadius.circular(10),
                //         color: buttonNo == 2 ? const Color(0xFF2D88D8) : const Color(0x00FFFFFF)),
                //     child: const Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text("change", style: TextStyle(color: Colors.black,
                //               fontWeight: FontWeight.w500))]),
                //   ),
                // ),
              ]),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 1.41,
              margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 35.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.transparent),
              child: Stack(children: [
                Visibility(
                    visible: buttonNo == 0 ? true : false,
                    child: OverviewList()),
                Visibility(
                    visible: buttonNo == 1 ? true : false,
                    child: OList1()),
                Visibility(
                    visible: buttonNo == 2 ? true : false,
                    child: OList2())
              ]),
            ),
          ),
        ],),
    );
  }
  void navTo(){
    setState(() {
      widget.CDSVisibility();
      Utils.setVisibility();
      Navigator.pop(context);
    });
  }
}
