import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/clients_list_model.dart';
import '../screens/dashboard/bottom_nav_screens/clients_screen.dart';
import '../screens/dashboard/bottom_nav_screens/dashboard_screen.dart';
import '../screens/dashboard/bottom_nav_screens/leads_screen.dart';
import '../screens/widgets/popup_container.dart';

class Utils {
  static void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey[800],
      textColor: Colors.white,
    );
  }

  // static showPopUpContainer(BuildContext context){
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context){
  //         return const PopUpContainerWidget();
  //       });
  // }

  static void setCurrentScreen(){
      currentTab = 1;
      currentScreen = ClientsScreen(backPressed: (){});
  }
  static void setCurrentScreen2(){
    currentTab = 3;
    currentScreen = LeadsScreen();
  }
  static bool setBackPressed(){
    currentTab = 0;
    currentScreen = DashBoardScreen();
    debugPrint("Back pressed");
    return true;
  }

  static void setVisibility(){
    isVisible = true;
  }

  static var months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  static var name = "Stephanie";
  static var portfolio = "Sales Manager";
  static var loans = number(15, 0);
  static var undisbursed = number(15, 0);
  static var customers = number(15, 0);
  static var not_count = number(105, 0);
  static var salesTarget = "₦10,000,000";
  static var targetAchieved = "₦25,000,300";
  static var targetPercent = number2();
  static var targetPercentString = targetPercent.toStringAsFixed(2);
  static var targetProgress = targetPercent;
  static var targetCommissionPercent = "2.3%";
  static var targetCommission = "₦250,000";
  static var ppEarned = "₦20,000";
  static var totalEarning = "₦25,000,000";
  static var grade = "SSE";
  static var clientStatus = 0;
  static var check = 0;
  static var formProgress = 0.0;
  static bool isVisible = true;
  static int currentTab = 0;
  static Widget currentScreen = DashBoardScreen();
  // static

  static int number(int range, int startFrom) {
    final random = Random();
    return random.nextInt(range) + startFrom;
  }
  static double number2() {
    final random = Random();
    var result = (random.nextDouble() * 100).toStringAsFixed(1);
    return double.parse(result);
  }

  static int status() {
    final random = Random();
    int code = (random.nextInt(99) + 3) % 2;
    debugPrint(" status is $code");
    return code;
  }

  static double increaseProgress(){
      return double.parse((formProgress += (1.1)/100).toStringAsFixed(1));
  }
}