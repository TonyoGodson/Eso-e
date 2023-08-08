import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_date_picker.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/custom_textfield.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  TextEditingController clientBVN = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController mname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController nin = TextEditingController();

  var chooseButton = 0;
  @override
  Widget build(BuildContext context) {
    String clientSector = "Client Sector";
    String title = "Title";
    return Container(
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Text("Person Information", style: TextStyle(
                fontSize: 20.0, color: Colors.grey[800],
                fontWeight: FontWeight.w700),),),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Text("Ensure you enter correct information, "
                "some of \nthe information provided will later be "
                "matched with \nyour BVN details.",
              style: TextStyle(color: Colors.black54, height: 1.5),),),
          DropdownWidget(
            valueChoose: clientSector,
            listItem: const ['Client Sector', 'Item 2', 'Item 3'],
            hint: 'Select an item',
              left: 15.0, top: 15.0, right: 15.0, bottom: 0.0
          ),
          textField(
              "Enter Client BVN",
              null, false, false,
              clientBVN, 1, 10,
              "Please Enter your BVN",
                  () {
                setState(() {
                  Utils.increaseProgress();
                });
              }, 15, 15, 15, 0
          ),
          DropdownWidget(
            valueChoose: title,
            listItem: const ['Title', 'Item 2', 'Item 3'],
            hint: 'Select an item',
              left: 15.0, top: 15.0, right: 15.0, bottom: 0.0
          ),
          textField(
              "First Name",
              null, false, false,
              fname, 1, 30,
              "Please enter your first name",
                  () {
                setState(() {
                  Utils.increaseProgress();
                });
              }, 15, 15, 15, 0
          ),
          textField(
              "Middle Name",
              null, false, false,
              mname, 1, 30,
              "Please enter your middle name",
                  () {
                setState(() {
                  Utils.increaseProgress();
                });
              }, 15, 15, 15, 0
          ),
          textField(
              "Last Name",
              null, false, false,
              lname, 1, 30,
              "please enter your last name",
                  () {
                setState(() {
                  Utils.increaseProgress();
                });
              }, 15, 15, 15, 0
          ),
          textField(
              "National Identity No. (NIN)",
              null, false, false,
              nin, 1, 14,
              "Please enter your NIN",
                  () {
                setState(() {
                  Utils.increaseProgress();
                });
              }, 15, 15, 15, 0
          ),
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
          const DatePickerWidget(myDate: "Date of Birth", left: 15.0, top: 15.0, right: 15.0, bottom: 0.0),
          const SizedBox(height: 20)
        ],),
    );
  }
}
