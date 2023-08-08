import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets/custom_textfield.dart';

class ContactInformation extends StatefulWidget {
  const ContactInformation({Key? key}) : super(key: key);

  @override
  State<ContactInformation> createState() => _ContactInformationState();
}

class _ContactInformationState extends State<ContactInformation> {

  TextEditingController phone = TextEditingController();
  TextEditingController altPhone = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[100],
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Text(
                  "Contact Information",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w700),),),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Text(
                  "Enter your correct contact information so that we can contact you when necessary.",
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
                  "Phone Number", "asset/svg_icons/phone.svg", false,
                  true, phone, 1,
                  14, "Please enter a Phone Number", (){
                setState(() {
                  Utils.increaseProgress();
                });
              }, 15, 15, 15, 0),
              textField(
                  "Alternate Phone Number", "asset/svg_icons/phone.svg", false,
                  true, altPhone, 1,
                  1, "Please enter an Alternate Phone Number",
                      (){
                    setState(() {
                      Utils.increaseProgress();
                    });
                  }, 15, 15, 15, 0
              ),
              textField(
                  "Email Address", "asset/svg_icons/message.svg", false,
                  true, email, 1,
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
