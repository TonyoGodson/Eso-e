import 'package:flutter/material.dart';

import '../../../model/dashboard_matrix_model.dart';
import '../../../utils/utils.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Utils.setBackPressed();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(leading: const Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
          child: Text("More Options", style: TextStyle(fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black)),
        ),
        leadingWidth: 300.0,
        backgroundColor: Colors.grey[100],
        elevation: 0,),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * .95,
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          decoration: BoxDecoration(
              color: const Color(0x00EFF6FC),
              borderRadius: BorderRadius.circular(10)
          ),
          child:  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
// ================Loans Options Container===================================
                  Container(
                    width: MediaQuery.of(context).size.width/3.5,
                    height: MediaQuery.of(context).size.width/3.5,
                    padding: EdgeInsets.only(left: 1.5),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFCBB9),),
                    child: Container(
                      // width: MediaQuery.of(context).size.width/3,
                      // height: MediaQuery.of(context).size.width/3,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.white,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .07,
                                height: MediaQuery.of(context).size.width * .07,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFFFF3EE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFFFF3EE),
                                        shape: BoxShape.circle),
                                    child: Image.asset('asset/png_icons/document.png')
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .05,
                                height: MediaQuery.of(context).size.width * .05,
                                decoration: BoxDecoration(
                                    color: Utils.loans > 0 ? (Utils.loans > 9 ? const Color(0xFF2B88D8): const Color(0xFFC70505)) : const Color(0xFFD2D0CE),
                                    shape: BoxShape.circle),
                                child: Utils.loans > 0
                                    ? Center(child: Text("${Utils.loans}", style: const TextStyle(fontSize: 10, color: Colors.white),))
                                    : const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 9,
                                  color: Color(0xFF8A8886),
                                ),)],),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('₦${DashboardMatrix.dashboardMatrix[0].loans}k',
                                      style: const TextStyle(fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    const SizedBox(height: 3.0),
                                    const Text("Loans",
                                      style: TextStyle(fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),),
                                  ])
                            ],
                          )
                        ],),
                    ),
                  ),
// ================2nd Options Container===================================
                  Container(
                    width: MediaQuery.of(context).size.width/3.5,
                    height: MediaQuery.of(context).size.width/3.5,
                    padding: EdgeInsets.only(left: 1.5),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFCBB9),),
                    child: Container(
                      // width: MediaQuery.of(context).size.width/3,
                      // height: MediaQuery.of(context).size.width/3,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.white,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .07,
                                height: MediaQuery.of(context).size.width * .07,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFFFF3EE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFFFF3EE),
                                        shape: BoxShape.circle),
                                    child: Image.asset('asset/png_icons/discount.png')
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .05,
                                height: MediaQuery.of(context).size.width * .05,
                                decoration: BoxDecoration(
                                    color: Utils.customers > 0 ? (Utils.customers > 9 ? const Color(0xFF2B88D8) : const Color(0xFFC70505)) : const Color(0xFFD2D0CE),
                                    shape: BoxShape.circle),
                                child: Utils.customers > 0
                                    ? Center(child: Text("${Utils.customers}", style: const TextStyle(fontSize: 10, color: Colors.white),))
                                    : const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 9,
                                  color: Color(0xFF8A8886),
                                ),)],),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${DashboardMatrix.dashboardMatrix[0].customers}',
                                      style: const TextStyle(fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    const SizedBox(height: 3.0),
                                    const Text("Customers",
                                      style: TextStyle(fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),),
                                  ])
                            ],
                          )
                        ],),
                    ),
                  ),
// ================3rd Options Container===================================
                  Container(
                    width: MediaQuery.of(context).size.width/3.5,
                    height: MediaQuery.of(context).size.width/3.5,
                    padding: const EdgeInsets.only(left: 1.5),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFCBB9),),
                    child: Container(
                      // width: MediaQuery.of(context).size.width/3,
                      // height: MediaQuery.of(context).size.width/3,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.white,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .07,
                                height: MediaQuery.of(context).size.width * .07,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFFFF3EE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFFFF3EE),
                                        shape: BoxShape.circle),
                                    child: Image.asset('asset/png_icons/people.png')
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .05,
                                height: MediaQuery.of(context).size.width * .05,
                                decoration: BoxDecoration(
                                    color: Utils.undisbursed > 0 ? (Utils.undisbursed > 9 ? const Color(0xFF2B88D8) : const Color(0xFFC70505)) : const Color(0xFFD2D0CE),
                                    shape: BoxShape.circle),
                                child: Utils.undisbursed > 0
                                    ? Center(child: Text("${Utils.undisbursed}", style: const TextStyle(fontSize: 10, color: Colors.white),))
                                    : const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 9,
                                  color: Color(0xFF8A8886),
                                ),)],),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('₦${DashboardMatrix.dashboardMatrix[0].undisbursed}k',
                                      style: const TextStyle(fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    const SizedBox(height: 3.0),
                                    const Text("Undisbursed",
                                      style: TextStyle(fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),),
                                  ])
                            ],
                          )
                        ],),
                    ),
                  ),
                ],),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
// ================4th Options Container===================================
                  Container(
                    width: MediaQuery.of(context).size.width/3.5,
                    height: MediaQuery.of(context).size.width/3.5,
                    padding: EdgeInsets.only(left: 1.5),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFCBB9),),
                    child: Container(
                      // width: MediaQuery.of(context).size.width/3,
                      // height: MediaQuery.of(context).size.width/3,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.white,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .07,
                                height: MediaQuery.of(context).size.width * .07,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFFFF3EE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFFFF3EE),
                                        shape: BoxShape.circle),
                                    child: Image.asset('asset/png_icons/people.png')
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .05,
                                height: MediaQuery.of(context).size.width * .05,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFD2D0CE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFD2D0CE),
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 9,
                                      color: Color(0xFF8A8886),
                                    )),),],),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${DashboardMatrix.dashboardMatrix[0].totalCustomer}',
                                      style: const TextStyle(fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    const SizedBox(height: 3.0),
                                    const Text("Total Customer",
                                      style: TextStyle(fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),),
                                  ])
                            ],
                          )
                        ],),
                    ),
                  ),
// ================5th Options Container===================================
                  Container(
                    width: MediaQuery.of(context).size.width/3.5,
                    height: MediaQuery.of(context).size.width/3.5,
                    padding: EdgeInsets.only(left: 1.5),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFCBB9),),
                    child: Container(
                      // width: MediaQuery.of(context).size.width/3,
                      // height: MediaQuery.of(context).size.width/3,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.white,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width * .07,
                                  height: MediaQuery.of(context).size.width * .07,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFFFF3EE),
                                      shape: BoxShape.circle),
                                  child: Image.asset('asset/png_icons/leads.png')),
                              Container(
                                width: MediaQuery.of(context).size.width * .05,
                                height: MediaQuery.of(context).size.width * .05,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFD2D0CE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFD2D0CE),
                                        shape: BoxShape.circle),
                                    child: Icon(Icons.arrow_forward_ios, size: 9, color: Color(0xFF8A8886),)
                                  // Image.asset('asset/people.png')
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${DashboardMatrix.dashboardMatrix[0].totalLeads}',
                                      style: const TextStyle(fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    const SizedBox(height: 3.0),
                                    Text("Total Leads",
                                      style: const TextStyle(fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),),
                                  ])
                            ],
                          )
                        ],),
                    ),
                  ),
// ================6th Options Container===================================
                  Container(
                    width: MediaQuery.of(context).size.width/3.5,
                    height: MediaQuery.of(context).size.width/3.5,
                    padding: EdgeInsets.only(left: 1.5),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFCBB9),),
                    child: Container(
                      // width: MediaQuery.of(context).size.width/3,
                      // height: MediaQuery.of(context).size.width/3,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.white,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width * .07,
                                  height: MediaQuery.of(context).size.width * .07,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFFFF3EE),
                                      shape: BoxShape.circle),
                                  child: Image.asset('asset/png_icons/dash_message.png')
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .05,
                                height: MediaQuery.of(context).size.width * .05,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFD2D0CE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFD2D0CE),
                                        shape: BoxShape.circle),
                                    child: Icon(Icons.arrow_forward_ios, size: 9, color: Color(0xFF8A8886),)
                                  // Image.asset('asset/people.png')
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${DashboardMatrix.dashboardMatrix[0].totalTickets}',
                                      style: const TextStyle(fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    const SizedBox(height: 3.0),
                                    Text("Total Tickets",
                                      style: const TextStyle(fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),),
                                  ])
                            ],
                          )
                        ],),
                    ),
                  ),
                ],),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
// ================7th Options Container===================================
                  Container(
                    width: MediaQuery.of(context).size.width/3.5,
                    height: MediaQuery.of(context).size.width/3.5,
                    padding: EdgeInsets.only(left: 1.5),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFCBB9),),
                    child: Container(
                      // width: MediaQuery.of(context).size.width/3,
                      // height: MediaQuery.of(context).size.width/3,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.white,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width * .07,
                                  height: MediaQuery.of(context).size.width * .07,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFFFF3EE),
                                      shape: BoxShape.circle),
                                  child: Image.asset('asset/png_icons/document.png')
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .05,
                                height: MediaQuery.of(context).size.width * .05,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFD2D0CE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFD2D0CE),
                                        shape: BoxShape.circle),
                                    child: Icon(Icons.arrow_forward_ios, size: 9, color: Color(0xFF8A8886),)
                                  // Image.asset('asset/people.png')
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${DashboardMatrix.dashboardMatrix[0].overduePayment}',
                                      style: const TextStyle(fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    const SizedBox(height: 3.0),
                                    const Text("Overdue Payment",
                                      style: TextStyle(fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),),
                                  ])
                            ],
                          )
                        ],),
                    ),
                  ),
// ================8th Options Container===================================
                  Container(
                    width: MediaQuery.of(context).size.width/3.5,
                    height: MediaQuery.of(context).size.width/3.5,
                    padding: EdgeInsets.only(left: 1.5),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFCBB9),),
                    child: Container(
                      // width: MediaQuery.of(context).size.width/3,
                      // height: MediaQuery.of(context).size.width/3,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.white,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width * .07,
                                  height: MediaQuery.of(context).size.width * .07,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFFFF3EE),
                                      shape: BoxShape.circle),
                                  child:  Image.asset('asset/png_icons/discount.png')
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .05,
                                height: MediaQuery.of(context).size.width * .05,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFD2D0CE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFD2D0CE),
                                        shape: BoxShape.circle),
                                    child: Icon(Icons.arrow_forward_ios, size: 9, color: Color(0xFF8A8886),)
                                  // Image.asset('asset/people.png')
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${DashboardMatrix.dashboardMatrix[0].kpiScore}',
                                      style: const TextStyle(fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    const SizedBox(height: 3.0),
                                    Text("KPI Score",
                                      style: const TextStyle(fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),),
                                  ])
                            ],
                          )
                        ],),
                    ),
                  ),
// ================9th Options Container===================================
                  Container(
                    width: MediaQuery.of(context).size.width/3.5,
                    height: MediaQuery.of(context).size.width/3.5,
                    padding: EdgeInsets.only(left: 1.5),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFCBB9),),
                    child: Container(
                      // width: MediaQuery.of(context).size.width/3,
                      // height: MediaQuery.of(context).size.width/3,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: Colors.white,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .07,
                                height: MediaQuery.of(context).size.width * .07,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFFFF3EE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFFFF3EE),
                                        shape: BoxShape.circle),
                                    child: Image.asset('asset/png_icons/people.png')
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .05,
                                height: MediaQuery.of(context).size.width * .05,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFD2D0CE),
                                    shape: BoxShape.circle),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * .05,
                                    height: MediaQuery.of(context).size.width * .05,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFD2D0CE),
                                        shape: BoxShape.circle),
                                    child: const Icon(Icons.arrow_forward_ios, size: 9, color: Color(0xFF8A8886),)
                                  // Image.asset('asset/people.png')
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${DashboardMatrix.dashboardMatrix[0].referrals}',
                                      style: const TextStyle(fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    const SizedBox(height: 3.0),
                                    const Text("Referrals",
                                      style: TextStyle(fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),),
                                  ])
                            ],
                          )
                        ],),
                    ),
                  ),
                ],),
            ],),
        ),
      ),
    );
  }
}
