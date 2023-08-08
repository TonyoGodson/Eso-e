import 'package:eso_e/screens/create_customer/customer_added_screen.dart';
import 'package:eso_e/screens/create_lead/create_lead_screen.dart';
import 'package:eso_e/screens/create_lead/lead_added_screen.dart';
import 'package:eso_e/screens/dashboard/bottom_nav_screens/client_details_screen.dart';
import 'package:eso_e/screens/create_customer/create_customer_screen.dart';
import 'package:eso_e/screens/dashboard/bottom_nav_screens/lead_details_screen.dart';
import 'package:eso_e/screens/dashboard/home.dart';
import 'package:eso_e/screens/dashboard/bottom_nav_screens/dashboard_screen.dart';
import 'package:eso_e/screens/interactions/client_interactions/client_interaction_created.dart';
import 'package:eso_e/screens/interactions/client_interactions/client_new_interaction_screen.dart';
import 'package:eso_e/screens/interactions/client_interactions/client_recent_interactions_screen.dart';
import 'package:eso_e/screens/interactions/lead_interactions/lead_interaction_created.dart';
import 'package:eso_e/screens/interactions/lead_interactions/lead_new_interaction_screen.dart';
import 'package:eso_e/screens/interactions/lead_interactions/lead_recent_interaction_screen.dart';
import 'package:eso_e/screens/login_account/login_screen.dart';
import 'package:eso_e/screens/login_account/login_verification_screen.dart';
import 'package:eso_e/screens/reset_password/otp_code_screen.dart';
import 'package:eso_e/screens/reset_password/password_changed_screen.dart';
import 'package:eso_e/screens/reset_password/reset_password_screen.dart';
import 'package:eso_e/screens/reset_password/set_new_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.grey[100],
  ));
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
    routes: {
      LoginScreen.routeName: (BuildContext context) => LoginScreen(),
      LoginVerificationScreen.routeName: (BuildContext context) => LoginVerificationScreen(),
      ResetPasswordScreen.routeName: (BuildContext context) => ResetPasswordScreen(),
      OTPCodeScreen.routeName: (BuildContext context) => OTPCodeScreen(),
      SetNewPasswordScreen.routeName: (BuildContext context) => SetNewPasswordScreen(),
      PasswordChangedScreen.routeName: (BuildContext context) => PasswordChangedScreen(),
      DashBoardScreen.routeName: (BuildContext context) => DashBoardScreen(),
      HomeScreen.routeName: (BuildContext context) => HomeScreen(),
      ClientDetailsScreen.routeName: (BuildContext context) => ClientDetailsScreen(),
      CreateCustomerScreen.routeName: (BuildContext context) => CreateCustomerScreen(onReturnCallback: () {}),
      CustomerAddedScreen.routeName: (BuildContext context) => CustomerAddedScreen(),
      ClientRecentInteractionsScreen.routeName: (BuildContext context) => ClientRecentInteractionsScreen(CDSVisibility: (){},),
      LeadRecentInteractionsScreen.routeName: (BuildContext context) => LeadRecentInteractionsScreen(CDSVisibility: (){},),
      ClientNewInteractionScreen.routeName: (BuildContext context) => ClientNewInteractionScreen(),
      LeadNewInteractionScreen.routeName: (BuildContext context) => LeadNewInteractionScreen(),
      ClientInteractionCreatedScreen.routeName: (BuildContext context) => ClientInteractionCreatedScreen(),
      LeadInteractionCreatedScreen.routeName: (BuildContext context) => LeadInteractionCreatedScreen(),
      LeadDetailsScreen.routeName: (BuildContext context) => LeadDetailsScreen(),
      CreateLeadScreen.routeName: (BuildContext context) => CreateLeadScreen(),
      LeadAddedScreen.routeName: (BuildContext context) => LeadAddedScreen(),
    },
  ));
}

