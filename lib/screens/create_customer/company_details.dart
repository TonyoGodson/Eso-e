import 'package:eso_e/screens/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets/custom_textfield.dart';

class CompanyDetails extends StatefulWidget {
  const CompanyDetails({Key? key}) : super(key: key);

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {

  TextEditingController headOffice = TextEditingController();
  TextEditingController companyAddress = TextEditingController();
  TextEditingController companyNearestLandmark = TextEditingController();
  TextEditingController companyPhone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String employerBranch = "Select Employer Branch";
    String companyState = "State";
    String companyLga = "LGA";
    return Container(
        color: Colors.grey[100],
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Text(
                  "Company Details",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w700),),),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Text(
                  "Ensure you enter correct information, some of the information provided will later be matched with your BVN details.",
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
                  "Employer Head Office", null, false,
                  false, headOffice, 1,
                  14, "Please enter Company HeadOffice Address", (){
                setState(() {
                  Utils.increaseProgress();
                });
              }, 15, 10, 15, 0),
              DropdownWidget(
                  valueChoose: employerBranch,
                  listItem: const ["Select Employer Branch", "Lagos", "Abuja", "Bayelsa"],
                  hint: "Select  Branch",
                  left: 15.0, top: 15.0, right: 15.0, bottom: 0.0),
              Row(children: [
                Expanded(
                  child: DropdownWidget(
                      valueChoose: companyState,
                      listItem: const [
                        "State",
                        "Lagos",
                        "Abuja"
                      ],
                      hint: "Residential Status",
                      left: 15.0, top: 15.0, right: 7.0, bottom: 0.0),),
                Expanded(child:  DropdownWidget(
                    valueChoose: companyLga,
                    listItem: const [
                      "LGA",
                      "Ikeja",
                      "Eti-Osa"
                    ],
                    hint: "Residential Status",
                    left: 7.0, top: 15.0, right: 15.0, bottom: 0.0))
              ]),
              textField(
                  "Address", null, false,
                  false, companyAddress, 1,
                  1, "Please enter Company Address",
                      (){
                    setState(() {
                      Utils.increaseProgress();
                    });
                  }, 15, 15, 15, 0
              ),
              Row(children: [
                Expanded(
                  child: textField(
                      "Nearest Landmark", null, false,
                      false, companyNearestLandmark, 1,
                      1, "Please enter Nearest Landmark",
                          (){
                        setState(() {
                          Utils.increaseProgress();
                        });
                      },15, 15, 7, 0
                  ),
                ),
                Expanded(
                  child: textField(
                      "Phone Number", null, false,
                      false, companyPhone, 1,
                      1, "Please enter Company Phone Number",
                          (){
                        setState(() {
                          Utils.increaseProgress();
                        });
                      }, 7, 15, 15, 0
                  ),
                ),
              ]),
              const SizedBox(height: 20)
            ]));
  }
}
