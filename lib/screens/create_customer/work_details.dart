import 'package:eso_e/screens/widgets/custom_date_picker.dart';
import 'package:eso_e/screens/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets/custom_textfield.dart';

class WorkDetails extends StatefulWidget {
  const WorkDetails({Key? key}) : super(key: key);

  @override
  State<WorkDetails> createState() => _WorkDetailsState();
}

class _WorkDetailsState extends State<WorkDetails> {
  TextEditingController staffId = TextEditingController();
  TextEditingController jobRole = TextEditingController();
  TextEditingController workEmail = TextEditingController();
  TextEditingController tin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String employmentType = "Employment Type";
    String salaryRange = "Salary Range";
    return Container(
        color: Colors.grey[100],
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Text(
                  "Work Details",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w700),),),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Text(
                  "Fill in the information below to help us verify you as an \nemployed worker of the above stated company.",
                  style: TextStyle(color: Colors.black54, height: 1.5),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Divider(
                  // height: 30.0,
                    thickness: 1.5,
                    color: Color(0xFFE9EBED)),
              ),
              textField(
                  "Staff ID", null, false,
                  false, staffId, 1,
                  14, "Please enter your staff ID", (){
                setState(() {
                  Utils.increaseProgress();
                });
              }, 15, 15, 15, 0),
              textField(
                  "Job Role", null, false,
                  false, jobRole, 1,
                  1, "Please enter your job role",
                      (){
                    setState(() {
                      Utils.increaseProgress();
                    });
                  }, 15, 15, 15, 0
              ),
              DropdownWidget(
                  valueChoose: employmentType,
                  listItem: const ["Employment Type", "Contract", "Full Staff"],
                  hint: "Employment Type",
                  left: 15.0, top: 15.0, right: 15.0, bottom: 0.0),
              const DatePickerWidget(myDate: "Date of Employment", left: 15.0, top: 15.0, right: 15.0, bottom: 0.0),
              DropdownWidget(
                  valueChoose: salaryRange,
                  listItem: const ["Salary Range",
                    "100,000 - 200,000", "201,000 - 300,000",
                    "301,000 - 400,000", "401,000 - 500,000"],
                  hint: "Salary Range",
                  left: 15.0, top: 15.0, right: 15.0, bottom: 0.0),
              const DatePickerWidget(myDate: "Salary Payment Day", left: 15.0, top: 15.0, right: 15.0, bottom: 0.0),
              textField(
                  "Work Email", null, false,
                  false, workEmail, 1,
                  1, "Please enter an Email Address",
                      (){
                    setState(() {
                      Utils.increaseProgress();
                    });
                  }, 15, 15, 15, 0
              ),
              const DatePickerWidget(myDate: "Payroll Date of Birth", left: 15.0, top: 15.0, right: 15.0, bottom: 0.0),
              textField(
                  "Tax Identification Number", null, false,
                  false, tin, 1,
                  1, "Please enter an Email Address",
                      (){
                    setState(() {
                      Utils.increaseProgress();
                    });
                  }, 15, 15, 15, 0
              ),
              const SizedBox(height: 20)
            ]));
  }
}
