import 'package:eso_e/screens/create_lead/lead_classification.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../dashboard/home.dart';
import '../widgets/appbar.dart';
import '../widgets/custom_button.dart';
import 'lead_added_screen.dart';
import 'lead_information.dart';

class CreateLeadScreen extends StatefulWidget {
  static const routeName = '/create_lead_screen';
  const CreateLeadScreen({Key? key}) : super(key: key);

  @override
  State<CreateLeadScreen> createState() => _CreateLeadScreenState();
}

class _CreateLeadScreenState extends State<CreateLeadScreen> {
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
                content: "Create Lead",
                content2: "/Personal Info",
                content3: "${Utils.formProgress.toStringAsFixed(0)}/2",
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
                const LeadClassification(),
                const SizedBox(height: 10),
                const LeadInformation(),
                const SizedBox(height: 10),
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
  void navTo(){
      Navigator.pop(context);
  }
  void _handleFormSubmit(BuildContext context) async {
    Navigator.of(context).pushNamed(LeadAddedScreen.routeName);
    Future.delayed(const Duration(seconds: 2), () {
      debugPrint("waited 2 secs");
      setState(() {
        Utils.setCurrentScreen2();
        debugPrint("in first function");
      });
      Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
    });
  }
}
