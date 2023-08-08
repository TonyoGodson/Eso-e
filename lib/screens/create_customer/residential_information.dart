import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets/custom_date_picker.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/custom_textfield.dart';

class ResidentialInformation extends StatefulWidget {
  const ResidentialInformation({Key? key}) : super(key: key);

  @override
  State<ResidentialInformation> createState() => _ResidentialInformationState();
}

class _ResidentialInformationState extends State<ResidentialInformation> {


  TextEditingController address = TextEditingController();
  TextEditingController landmark = TextEditingController();
  @override
  Widget build(BuildContext context) {

    String permanentResidentialState = "Permanent Residential State";
    String lga = "LGA";
    String residentialStatus = "Residential Status";

    return Container(
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Text("Residential Information", style: TextStyle(
                fontSize: 20.0, color: Colors.grey[800],
                fontWeight: FontWeight.w700),),),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Text("Enter your correct residential information.",
              style: TextStyle(color: Colors.black54, height: 1.5),),),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Divider(
              // height: 30.0,
                thickness: 1.5,
                color: Color(0xFFE9EBED)),
          ),
          DropdownWidget(
            valueChoose: permanentResidentialState,
            listItem: const ['Permanent Residential State', 'Item 2', 'Item 3'],
            hint: 'Select an item',
            // onChanged: (newValue) {
            //   setState(() {
            //     permanentResidentialState = newValue;
            //   });
            // },
              left: 15.0, top: 15.0, right: 15.0, bottom: 0.0
          ),
          DropdownWidget(
            valueChoose: lga,
            listItem: const ['LGA', 'Item 2', 'Item 3'],
            hint: 'Select an item',
            // onChanged: (newValue) {
            //   setState(() {
            //     lga = newValue;
            //   });
            // },
              left: 15.0, top: 15.0, right: 15.0, bottom: 0.0
          ),
          textField(
              "Address",
              null, false, false,
              address, 1, 200,
              "Please enter your Address",
                  () {
                setState(() {
                  Utils.increaseProgress();
                });
              }, 15, 15, 15, 0
          ),
          textField(
              "Nearest Landmark",
              null, false, false,
              landmark, 1, 200,
              "Please enter the Nearest Landmark to your Address",
                  () {
                setState(() {
                  Utils.increaseProgress();
                });
              }, 15, 15, 15, 0
          ),
          Row(children: [
            Expanded(
              child: DropdownWidget(
                  valueChoose: residentialStatus,
                  listItem: const [
                    "Residential Status",
                    "Permanent",
                    "Temporary"
                  ],
                  hint: "Residential Status",
                  // onChanged: (newValue) {
                  //   setState(() {
                  //     residentialStatus = newValue;
                  //   });
                  // },
                  left: 15.0, top: 15.0, right: 7.0, bottom: 0),),
            const Expanded(child: DatePickerWidget(myDate: 'Date Moved In', left: 7.0, top: 15.0, right: 15.0, bottom: 0.0,))
          ]),
          const SizedBox(height: 20)],),);
  }
}
