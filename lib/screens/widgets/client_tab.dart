import 'package:eso_e/screens/create_customer/create_customer_screen.dart';
import 'package:eso_e/screens/dashboard/bottom_nav_screens/client_details_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../interactions/client_interactions/client_recent_interactions_screen.dart';
import 'overview_list.dart';

class ClientTab extends StatefulWidget {

  final VoidCallback onVisibilityChanged;
  const ClientTab({super.key,
    required this.onVisibilityChanged
  });

  @override
  State<ClientTab> createState() => _ClientTabState();
}

class _ClientTabState extends State<ClientTab> with SingleTickerProviderStateMixin{
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
      height: MediaQuery.of(context).size.width,
      child: Column(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.grey), // Set the unselected tab indicator color
                    child: TabBar(
                      controller: _tabController,
                      labelColor: Colors.black,
                      labelPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 8.0),
                      unselectedLabelColor: Colors.grey,
                      tabs: const [
                        Text("Overview"),
                        Text("Profile"),
                        Text("Loans")
                      ],
              ),
                  ),
                ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                          child: Row(
                            children: [
                              const Text("RECENT INTERACTIONS"),
                              const SizedBox(width: 10.0),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pushNamed(CreateCustomerScreen.routeName);
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .07,
                                  height: MediaQuery.of(context).size.width * .07,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF2D88D8)
                                  ),
                                  child: const Icon(Icons.add, color: Colors.white,),
                                ),
                              ),
                              const Expanded(child: SizedBox(width: 10.0)),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    // Utils.isVisible = true;
                                    widget.onVisibilityChanged();
                                    debugPrint("See All Tapped");
                                  });
                                  // Navigator.of(context).pushNamed(RecentInteractionsScreen.routeName);
                                },
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .2,
                                    height: MediaQuery.of(context).size.width * .068,
                                    decoration: BoxDecoration(
                                      color: const Color(0x222D88D8),
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: const Center(
                                      child: Text("See All",
                                          style: TextStyle(
                                              color: Color(0xFF2D88D8),
                                            fontSize: 12.0,
                                          )),
                                    ),
                                  ),
                              ),
                            ],
                          )),
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 0.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.transparent
                            ),
                            child: const OverviewList(),
                          ),
                        )
                      ],),
                  ),
                  const Center(child: Text("Tab 2")),
                  const Center(child: Text("Tab 3")),
                ],
              ),
            )
        ]),
    );
  }
}
