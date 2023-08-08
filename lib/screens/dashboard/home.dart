import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/utils.dart';
import '../create_customer/create_customer_screen.dart';
import '../create_lead/create_lead_screen.dart';
import '../login_account/login_verification_screen.dart';
import 'bottom_nav_screens/dashboard_screen.dart';
import 'bottom_nav_screens/clients_screen.dart';
import 'bottom_nav_screens/leads_screen.dart';
import 'bottom_nav_screens/more_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';
  final VoidCallback? setScreen;
  const HomeScreen({Key? key, this.setScreen}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentTab = Utils.currentTab;
  int currentBtn = 0;
  final List<Widget> screens = [
    DashBoardScreen(),
    ClientsScreen(backPressed: (){}),
    LeadsScreen(),
    MoreScreen()
  ];
  Future<bool> setBackPressed() async {
    currentScreen = const DashBoardScreen();
    currentTab = 0;
    debugPrint("back pressed");
    return true;
  }

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Utils.currentScreen;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0,
        child: Container(
          height: 60.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//================= Dashboard Gesture Detector==================
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        currentScreen = const DashBoardScreen();
                        currentTab = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width * .2175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('asset/svg_icons/dashboard_icon.svg',
                            color: currentTab == 0 ? const Color(0xFF2D88D8) : Colors.grey,
                            height: 20.0,
                            width: 50.0,
                          ),
                          const SizedBox(height: 5),
                          Text("Dashboard",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: currentTab == 0 ? Colors.blue : Colors.grey,))
                          ],),
                        ),
                  ),
//================= Clients Gesture Detector====================
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        currentScreen = ClientsScreen(backPressed: (){},);
                        currentTab = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width * .2175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('asset/svg_icons/client_icon.svg',
                            color: currentTab == 1 ? const Color(0xFF2D88D8) : Colors.grey,
                            height: 20.0,
                            width: 50.0,
                          ),
                          SizedBox(height: 5),
                          Text("Clients",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: currentTab == 1 ? Colors.blue : Colors.grey,))
                        ],),
                    ),
                  ),
//================= FAB as Container with Padding================
                  Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: GestureDetector(
                          onTap: (){
                            setState(()  {
                              // currentBtn = 0;
                              showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                isScrollControlled: true,
                                context: context,
                                builder: (BuildContext context) => Padding(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context).viewInsets.bottom),
                                  child: Container(
                                    height: 200,
                                    margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 70.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      TextButton(
                                          onPressed: (){
                                            setState(() {
                                              Navigator.pop(context);
                                              currentBtn = 0;
                                              Navigator.of(context).pushNamed(CreateCustomerScreen.routeName,
                                                // arguments: {'onReturnCallBack' : setCurrentScreen}
                                              );
                                            });
                                          },
                                          style: currentBtn == 0
                                              ? ButtonStyle(
                                            textStyle: MaterialStateProperty.all<TextStyle>(
                                              const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500), // Set the text style
                                            ),
                                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFDEECF9)),
                                            foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFF2B88D8)),
                                            fixedSize: MaterialStateProperty.all<Size>(Size(
                                                MediaQuery.of(context).size.width * .8,
                                                MediaQuery.of(context).size.width * .12
                                            )),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                              ),
                                            ),
                                          )
                                              : ButtonStyle(
                                            textStyle: MaterialStateProperty.all<TextStyle>(
                                              const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500), // Set the text style
                                            ),
                                            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                            foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                                            fixedSize: MaterialStateProperty.all<Size>(Size(
                                                MediaQuery.of(context).size.width * .8,
                                                MediaQuery.of(context).size.width * .12
                                            )),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                              ),
                                            ),
                                          ),
                                          child: const Text("New Customer")),
                                        const SizedBox(height: 15),
                                        TextButton(
                                            onPressed: (){
                                              setState(() {
                                                Navigator.pop(context);
                                                currentBtn = 1;
                                                Navigator.of(context).pushNamed(CreateLeadScreen.routeName);
                                                    // arguments: {'onReturnCallBack' : setCurrentScreen}
                                              });
                                            },
                                            style: currentBtn == 1
                                                ? ButtonStyle(
                                              textStyle: MaterialStateProperty.all<TextStyle>(
                                                const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500), // Set the text style
                                              ),
                                              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFDEECF9)),
                                              foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFF2B88D8)),
                                              fixedSize: MaterialStateProperty.all<Size>(Size(
                                                  MediaQuery.of(context).size.width * .8,
                                                  MediaQuery.of(context).size.width * .12
                                              )),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                                ),
                                              ),
                                            )
                                                : ButtonStyle(
                                              textStyle: MaterialStateProperty.all<TextStyle>(
                                                const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500), // Set the text style
                                              ),
                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                                              fixedSize: MaterialStateProperty.all<Size>(Size(
                                                  MediaQuery.of(context).size.width * .8,
                                                  MediaQuery.of(context).size.width * .12
                                              )),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                                ),
                                              ),
                                            ),
                                            child: const Text("New Lead")),
                                    ],)
                                  ),
                                ),);});
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width *.13,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [Color(0xFF2B88D8), Color(0xFF0545EA)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Icon(Icons.add, color: Colors.white,)
                            ),
                          ),
                        ),
                      ),
//================= Leads Gesture Detector=======================
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        currentScreen = LeadsScreen();
                        currentTab = 3;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width * .2175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('asset/svg_icons/leads_icon.svg',
                            color: currentTab == 3 ? const Color(0xFF2D88D8) : Colors.grey,
                            height: 20.0,
                            width: 50.0,
                          ),
                          const SizedBox(height: 5),
                          Text("Leads",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: currentTab == 3 ? Colors.blue : Colors.grey,))
                        ]))),
//================= More Gesture Detector========================
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        currentScreen = MoreScreen();
                        currentTab = 4;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width * .2175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('asset/svg_icons/category_icon.svg',
                            color: currentTab == 4 ? const Color(0xFF2D88D8) : Colors.grey,
                            height: 20.0,
                            width: 50.0,
                          ),
                          const SizedBox(height: 5),
                          Text("More",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: currentTab == 4 ? Colors.blue : Colors.grey,))
                        ],),
                    ),
                  ),
//================= End of More Gesture Detector=================
              ],),
        ),
      ),
    );
  }
}