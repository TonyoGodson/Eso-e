import 'package:eso_e/screens/widgets/custom_dropdown.dart';
import 'package:eso_e/screens/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LeadClassification extends StatefulWidget {
  const LeadClassification({Key? key}) : super(key: key);

  @override
  State<LeadClassification> createState() => _LeadClassificationState();
}

class _LeadClassificationState extends State<LeadClassification> {
  TextEditingController leadCategory = TextEditingController();
  TextEditingController leadRating = TextEditingController();
  TextEditingController projectInflow = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String leadType = "Lead Type";
    String leadSource = "Lead Source";
    String interestedProduct = "Interested Product";
    return Container(
        color: Colors.grey[100],
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Text(
              "Lead Classification",
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
          DropdownWidget(
              valueChoose: leadType,
              listItem: const [
                "Lead Type",
                "Lead Type1",
                "Lead Type2",
                "Lead Type3"],
              hint: "Lead Type",
              left: 15.0, top: 15.0,
              right: 15.0,
              bottom: 0.0),
          DropdownWidget(
              valueChoose: leadSource,
              listItem: const [
                "Lead Source",
                "Lead Source1",
                "Lead Source2",
                "Lead Source3"],
              hint: "Lead Source",
              left: 15.0, top: 15.0,
              right: 15.0,
              bottom: 0.0),
          textField(
              "Lead Category", "",
              false, false,
              leadCategory, 1, 1,
              "Please Enter a Category",
              (){},
              15.0, 15.0, 15.0, 0.0),
          DropdownWidget(
              valueChoose: interestedProduct,
              listItem: const [
                "Interested Product",
                "Interested Product1",
                "Interested Product2",
                "Interested Product3"],
              hint: "Interested Product",
              left: 15.0, top: 15.0,
              right: 15.0,
              bottom: 0.0),
          textField(
              "Lead Rating", "",
              false, false,
              leadRating, 1, 1,
              "Please Enter a Rating",
                  (){},
              15.0, 15.0, 15.0, 0.0),
          textField(
              "Project Inflow", "",
              false, false,
              projectInflow, 1, 1,
              "Please Enter a Project Inflow",
                  (){},
              15.0, 15.0, 15.0, 0.0),
          const SizedBox(height: 20.0),
        ]));
  }
}
