import 'package:eso_e/screens/widgets/custom_date_picker.dart';
import 'package:eso_e/screens/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class LeadInformation extends StatefulWidget {
  const LeadInformation({Key? key}) : super(key: key);

  @override
  State<LeadInformation> createState() => _LeadInformationState();
}

class _LeadInformationState extends State<LeadInformation> {
  TextEditingController leadFirstName = TextEditingController();
  TextEditingController leadMiddleName = TextEditingController();
  TextEditingController leadLastName = TextEditingController();
  TextEditingController leadEmailAddress = TextEditingController();
  TextEditingController leadMobileNumber = TextEditingController();
  TextEditingController leadAddress = TextEditingController();
  TextEditingController leadNin = TextEditingController();
  int chooseButton = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[100],
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Text(
                  "Lead Information",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w700))),
          const Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Text(
                  "Ensure you enter correct information, "
                      "some of \nthe information provided will later be "
                      "matched with \nyour BVN details.",
                  style: TextStyle(color: Colors.black54, height: 1.5))),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Divider(
              // height: 30.0,
                thickness: 1.5,
                color: Color(0xFFE9EBED)),
          ),
          textField(
              "First Name", "",
              false, false,
              leadFirstName,
              1, 1,
              "Please Enter a First Name",
              (){},
              15.0, 15.0, 15.0, 0.0),
          textField(
              "Middle Name", "",
              false, false,
              leadMiddleName,
              1, 1,
              "Please Enter a Middle Name",
                  (){},
              15.0, 15.0, 15.0, 0.0),
          textField(
              "Last Name", "",
              false, false,
              leadLastName,
              1, 1,
              "Please Enter a Last Name",
                  (){},
              15.0, 15.0, 15.0, 0.0),
          textField(
              "Email Address", "",
              false, false,
              leadEmailAddress,
              1, 1,
              "Please Enter your Email Address",
                  (){},
              15.0, 15.0, 15.0, 0.0),
          textField(
              "Mobile Number", "",
              false, false,
              leadMobileNumber,
              1, 1,
              "Please Enter your Mobile Number",
                  (){},
              15.0, 15.0, 15.0, 0.0),
          textField(
              "Address", "",
              false, false,
              leadAddress,
              1, 1,
              "Please Enter your Address",
                  (){},
              15.0, 15.0, 15.0, 0.0),
          textField(
              "National Identity No. (NIN)", "",
              false, false,
              leadNin,
              1, 1,
              "Please Enter yur NIN",
                  (){},
              15.0, 15.0, 15.0, 0.0),
          Row(children: [
            Expanded(child: Button(
                "Male", chooseButton == 0
                ? const Color(0xFF2D88D8) : const Color(0xFFDEECF9),
                chooseButton == 0
                    ? const Color(0xFFFFFFFF) : const Color(0xFF0078D4),
                    (){
                  debugPrint("Male tapped");
                  setState(() {
                    chooseButton = 0;
                    debugPrint("button 0 tapped");
                  });
                },
                12.0, 15.0, 15.0, 5.0, 0.0
            )),
            Expanded(child: Button(
                "Female", chooseButton == 1
                ? const Color(0xFF2D88D8) : const Color(0x88C7E0F4),
                chooseButton == 1
                    ? const Color(0xFFFFFFFF) : const Color(0xFF2D88D8),
                    (){
                  debugPrint("female tapped");
                  setState(() {
                    chooseButton = 1;
                    debugPrint("button 1 tapped");
                  });
                },
                12.0, 5.0, 15.0, 15.0, 0.0
            ))
          ]),
          const DatePickerWidget(
              myDate: "Date of Birth",
              left: 15.0, top: 15.0,
              right: 15.0, bottom: 0.0),
          const SizedBox(height: 20.0),
        ]));
  }
}
