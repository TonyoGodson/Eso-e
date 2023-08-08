import 'package:eso_e/screens/create_customer/contact_information.dart';
import 'package:eso_e/screens/create_customer/customer_added_screen.dart';
import 'package:eso_e/screens/create_customer/personal_information.dart';
import 'package:eso_e/screens/create_customer/residential_information.dart';
import 'package:eso_e/screens/create_customer/work_details.dart';
import 'package:eso_e/screens/dashboard/bottom_nav_screens/clients_screen.dart';
import 'package:eso_e/screens/dashboard/home.dart';
import 'package:eso_e/screens/widgets/custom_progressbar.dart';
import 'package:eso_e/screens/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../model/clients_list_model.dart';
import '../../utils/utils.dart';
import '../login_account/login_verification_screen.dart';
import '../widgets/appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_date_picker.dart';
import '../widgets/custom_dropdown.dart';
import '../dashboard/bottom_nav_screens/client_details_screen.dart';
import 'company_details.dart';

class CreateCustomerScreen extends StatefulWidget {
  static const routeName = '/create_customer_screen';
  static const routeName2 = '/clients_screen';

  final VoidCallback? onReturnCallback;
  const CreateCustomerScreen({Key? key, this.onReturnCallback}) : super(key: key);

  @override
  State<CreateCustomerScreen> createState() => _CreateCustomerScreenState();
}

class _CreateCustomerScreenState extends State<CreateCustomerScreen> {
  ClientListModel clientDetail = ClientListModel();
  var oneClient = ClientListModel();

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (notification) {
        notification.disallowIndicator(); // Disable overscroll effect
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
              toolbarHeight: 77.0,
              automaticallyImplyLeading: false,
              elevation: 0,
              flexibleSpace: AppBarWidget(
                context: context,
                onTap: navTo,
                shape: BoxShape.rectangle,
                color: const Color(0x2F2D88D8),
                color2: const Color(0xFF2D88D8),
                content: "Create Customer",
                content2: "/Personal Info",
                content3: "${Utils.formProgress.toStringAsFixed(0)}/5",
                c_width: 0.13,
                c_height: 0.13,
                radius: 60.0,
                left: 0.0,
                top: 0.0,
                right: 15.0,
                bottom: 0.0,
                backBtnHt: 50.0,
                backBtnWt: 50.0,
                backBtnRd: 15.0,
                iconSize: 30.0,
                padding: 0.0,
                animation: true,
                duration: 750,
                height: 5.0,
                toolbarHt: 77.0,
                sizedBoxHt: 18.0,
                percent: Utils.formProgress,
                progressRadius: 0.0,
                lerp: 0.0,
                isCurved: false,
                backPaddingLeft: 15.0,
                backPaddingTop: 0.0,
                backPaddingRight: 0.0,
                backPaddingBottom: 0.0,
              )),
          backgroundColor: const Color(0xFFEAE8E8),
          body: ListView(
              children: [
                const PersonalInformation(),
                const SizedBox(height: 10),
                const ResidentialInformation(),
                const SizedBox(height: 10),
                const ContactInformation(),
                const SizedBox(height: 10),
                const CompanyDetails(),
                const SizedBox(height: 10),
                const WorkDetails(),
                const SizedBox(height: 60),
                Button(
                    "Submit",
                    const Color(0xFF2D88D8),
                    Colors.white,
                        () =>
                    {
                      debugPrint("Submit clicked"),
                      _handleFormSubmit(context)
                      // Navigator.of(context).pushNamed(CustomerAddedScreen.routeName)
                    },
                    12.0,
                    100.0,
                    0.0,
                    100.0,
                    0.0),
                const SizedBox(height: 60),
              ])),
    );
  }

  void navTo() {
    Navigator.pop(context);
  }

  void _handleFormSubmit(BuildContext context) async {
    Navigator.of(context).pushNamed(CustomerAddedScreen.routeName);
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        Utils.setCurrentScreen();
      });
      Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
    });
  }
}


