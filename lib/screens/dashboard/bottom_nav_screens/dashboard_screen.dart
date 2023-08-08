
import 'package:eso_e/screens/widgets/notification_counter.dart';
import 'package:eso_e/screens/widgets/recent_activities_list.dart';
import 'package:eso_e/screens/widgets/target_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../model/dashboard_matrix_model.dart';
import '../../../utils/utils.dart';
import '../../widgets/nav_drawer.dart';


class DashBoardScreen extends StatefulWidget {
  static const routeName = '/recent_activities_screen';
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  DateRangePickerController _dateRangePickerController = DateRangePickerController();
  var ls_day = '2 days ago';
  var ls_time = '2:00 PM';
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();


  // var act_count = 2;
  var supervisor = "Adedeji Kunle";
  var agentCode = "223AFD3";
  var branch = "Lagos";
  String? formattedDate;
  @override
  Widget build(BuildContext context) {
    String startMonth = DateFormat('MMM').format(startDate);
    String endMonth = DateFormat('MMM').format(endDate);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: CircleAvatar(
          radius: 18, backgroundImage: AssetImage('asset/timothy.png'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          child: ClipOval(
            child: Image.asset(
              'asset/png_icons/timothy.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
        title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi ${Utils.name} 👋",
                style: const TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),),
              const SizedBox(height: 3.0),
              Text(Utils.portfolio,
                style: const TextStyle(fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38),),
            ]),
        actions: [IconButton(
            onPressed: () {},
            icon: Stack(
              children: [
                SvgPicture.asset('asset/svg_icons/notification_icon.svg',
                  color: Utils.not_count > 0 ? const Color(0xFF2D88D8) : Colors.grey,
                  height: 30.0,
                  width: 20.0,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Utils.not_count <= 99
                      ? const NotificationCounter1()
                      : const NotificationCounter2()
                ),],))
        ],),
      drawer: NavDrawer(),
      backgroundColor: Colors.grey[100],
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        children:  [
// ================Last Seen Container==========================
          Container(
            padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * .08,
              margin: const EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                  color:  const Color(0xFF2B88D8),
                  borderRadius: BorderRadius.circular(12)
              ),
            child: Row(children: [
              const CircleAvatar(
                radius: 13,
                backgroundImage: AssetImage('asset/png_icons/lastseen.png'),
              ),

              const SizedBox(width: 6.0),
              Text("Last seen $ls_day | $ls_time",
                  style: const TextStyle(fontSize: 11.5,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),),
            ],),
          ),
// ================Supervisor, Agent code Branch Container======
          Container(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 4.0),
            margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
            height: MediaQuery.of(context).size.width * .16,
            decoration: BoxDecoration(
                color:  const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(supervisor,
                        style: const TextStyle(fontSize: 12.0,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5.0),
                      const Text("SUPERVISOR",
                        style: TextStyle(fontSize: 9.0,
                            fontWeight: FontWeight.w400),
                      )
                    ]),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(agentCode,
                          style: const TextStyle(fontSize: 12.0,
                              fontWeight: FontWeight.w500)
                      ),
                      const SizedBox(height: 5.0),
                      const Text("AGENT CODE",
                        style: TextStyle(fontSize: 9.0,
                            fontWeight: FontWeight.w400),
                      )
                    ]),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(branch,
                          style: const TextStyle(fontSize: 12.0,
                              fontWeight: FontWeight.w500)
                      ),
                      const SizedBox(height: 5.0),
                      const Text("BRANCH",
                        style: TextStyle(fontSize: 9.0,
                            fontWeight: FontWeight.w400),
                      )
                    ]),
              ),
            ],),
          ),
// ================Stats Container==============================
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * .65,
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 4.0),
              decoration: const BoxDecoration(
                  color:  Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  )),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const Text(
                  "STATS",
                  style: TextStyle(fontSize: 12.8,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500),),
                GestureDetector(
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return  AlertDialog(
                            title: Container(
                              width: double.maxFinite,
                              height: 318.0,
                              child:  Column(
                                children: [
                                  const Text("Select Date Range", style: TextStyle(fontSize: 15.0),),
                                  SfDateRangePicker(
                                    maxDate: DateTime.now(),
                                    view: DateRangePickerView.year,
                                    selectionMode: DateRangePickerSelectionMode.range,
                                    onSelectionChanged: _onSelectionChanged,
                                    controller: _dateRangePickerController,
                                    showActionButtons: true,
                                    onSubmit: (Object? val){
                                      setState(() {
                                        startMonth = DateFormat('MMM').format(startDate);
                                        endMonth = DateFormat('MMM').format(endDate);
                                        _dateRangePickerController.selectedRange = null;
                                      });
                                      debugPrint(val.toString());
                                      Navigator.of(context).pop();
                                    },
                                    onCancel: (){
                                      _dateRangePickerController.selectedRange = null;
                                    },
                                  ),
                                ]))
                          );
                        });
                  },
                  child: Container(
                    width: 95,
                    height: 30,
                    // padding: const EdgeInsets.only(left: 12.0, right: 5.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFC7E0F4),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                     child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$startMonth -",
                          style: const TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF2D88D8),
                              fontWeight: FontWeight.w500
                          ),),
                        Text(
                        " $endMonth",
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFF2D88D8),
                          fontWeight: FontWeight.w500
                        ),),
                        const Icon(Icons.keyboard_arrow_down_sharp, size: 20.0, color: Color(0xFF2D88D8),)
                      ],
                    )
                  ),
                )],),
              const SizedBox(height: 15.0),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                const Text(
                  "Sales Target",
                  style: TextStyle(fontSize: 14.8,
                      color: Color(0xFF605E5C),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  Utils.salesTarget,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500),)
              ],),
              const SizedBox(height: 15),
              const Text(
                "Target Achieved",
                style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.8,
                      color: Colors.black54)),
              const SizedBox(height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Utils.targetAchieved,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.5,
                          color: Colors.black)),
                  Text("(${Utils.targetPercentString}%)",
                       style: const TextStyle(
                           fontWeight: FontWeight.w400, fontSize: 15,
                           color: Color(0xFFC70505),
                )),]),
              const SizedBox(height: 10),
                const TargetProgress(),
              const SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Commission (${Utils.targetCommissionPercent})",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.8,
                              color: Colors.black54)),
                      const SizedBox(height: 5,),
                      Text(Utils.targetCommission, style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.5,
                          color: Colors.black))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Grade", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11.8,
                          color: Colors.black54)),
                      const SizedBox(height: 5),
                      Text(Utils.grade, style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.5,
                          color: Colors.black))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Performance Per Earned",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.8,
                              color: Colors.black54)),
                      const SizedBox(height: 5),
                      Text(Utils.ppEarned, style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.5,
                          color: Colors.black))
                    ],
                  )
                ],),
              const Divider(
                    thickness: 1.3,
                    color: Color(0x552B88D8),
                    height: 25.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total Earning",
                      style: TextStyle(fontSize: 14.8,
                          color: Color(0xFF605E5C),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      Utils.totalEarning,
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),)
                  ],),
            ],),
          ),
          const SizedBox(height: 0),
// ================Recent Activities Container==================
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * .8,
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            decoration: BoxDecoration(
                color: const Color(0x000FF6FC),
                borderRadius: BorderRadius.circular(10)
            ),
            child:  const Column(
              children: [
                RecentActivitiesList()
              ],),
          ),
        ]
      ),
    );
  }
  // void _onSelectionChanged(DateRangePickerSelectionChangedArgs dateRangePickerSelectionChangedArgs){
  //   debugPrint(dateRangePickerSelectionChangedArgs.value.toString());
  // }
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      startDate = args.value.startDate!;
      endDate = args.value.endDate!;
      // debugPrint("Start Month: $startMonth");
      // debugPrint("End Month: $endMonth");
    }
  }
}
