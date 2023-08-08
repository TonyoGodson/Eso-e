import 'package:eso_e/screens/interactions/client_interactions/client_recent_interactions_screen.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../widgets/o_list1.dart';
import '../../widgets/o_list2.dart';
import '../../widgets/overview_list.dart';

class ClientRecentInteractionsTab extends StatefulWidget {
  const ClientRecentInteractionsTab({Key? key}) : super(key: key);

  @override
  State<ClientRecentInteractionsTab> createState() => _ClientRecentInteractionsTabState();
}

class _ClientRecentInteractionsTabState extends State<ClientRecentInteractionsTab> with SingleTickerProviderStateMixin {

  late TabController _tabController;


  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 1.3,
      child: Column(
          children: [
            Container(
              child:
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      controller: _tabController,
                      labelPadding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      indicatorColor: Colors.transparent,
                      isScrollable: true,
                      tabs:  [
                        // Text("Text2", style: TextStyle(color: Colors.black),),
                        // Text("Text2", style: TextStyle(color: Colors.black)),
                        // Text("Text2", style: TextStyle(color: Colors.black)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.18,
                            height: MediaQuery.of(context).size.width * 0.09,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF2D88D8)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("all  ", style: TextStyle(color: Colors.white),),
                                  Text("${Utils.loans > 99 ? "99+" : Utils.loans}",
                                    style:  const TextStyle(color: Colors.white54),),]),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xFFD6D6D6),
                                  width: 1.5),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0x002D88D8)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Open  ", style: TextStyle(color: Colors.black),),
                                Text("${Utils.loans > 99 ? "99+" : Utils.loans}",
                                  style:  const TextStyle(color: Colors.grey),),]),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xFFD6D6D6),
                                  width: 1.5),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0x002D88D8)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Resolved  ", style: TextStyle(color: Colors.black),),
                                Text("${Utils.loans > 99 ? "99+" : Utils.loans}",
                                  style:  const TextStyle(color: Colors.grey),),]),
                        ),
                      ],
                    ),
                  ),
                ),
            // Text("Text2"),
            // Text("Text2"),
            // Text("Text2"),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 1.3,
                          margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.transparent),
                          child: const OverviewList()
                        ))]),
                  Column(
                      children: [
                        Expanded(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.transparent),
                                child: const OList1()
                            ))]),
                  Column(
                      children: [
                        Expanded(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.transparent),
                                child: const OList2()
                            ))]),
                ]))
          ]),
    );
  }
}
