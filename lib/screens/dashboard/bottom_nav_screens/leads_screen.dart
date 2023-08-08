import 'package:eso_e/model/leads_list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/utils.dart';
import '../../create_lead/create_lead_screen.dart';
import '../../login_account/login_verification_screen.dart';
import '../../widgets/appbar.dart';
import '../../widgets/clients_list.dart';
import '../../widgets/leads_list.dart';
import '../../widgets/notification_counter.dart';
import 'client_details_screen.dart';

class LeadsScreen extends StatefulWidget {
  const LeadsScreen({Key? key}) : super(key: key);

  @override
  State<LeadsScreen> createState() => _LeadsScreenState();
}

class _LeadsScreenState extends State<LeadsScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Utils.setBackPressed();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: CircleAvatar(
              radius: 18, backgroundImage: AssetImage('asset/png_icons/timothy.png'),
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'asset/png_icons/timothy.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi ${Utils.name} 👋",
                  style: const TextStyle(fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                const SizedBox(height: 3.0),
                Text(Utils.portfolio,
                  style: const TextStyle(fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),),
              ]),
          actions: [IconButton(
              onPressed: () {},
              icon: Stack(
                children: [
                  SvgPicture.asset('asset/svg_icons/notification_icon.svg',
                    color: Utils.not_count > 0 ? const Color(0xFF2D88D8) : Colors.grey,
                    height: 30.0,
                    width: 20.0,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Utils.not_count <= 99
                          ? const NotificationCounter1()
                          : const NotificationCounter2()
                  ),],))
          ],),
        backgroundColor: Colors.grey[100],
        body:  LeadListModel.oneLead.isEmpty ? Center(
          child: Column(children: [
            const SizedBox(height: 15.0),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width*.13,
              margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFFEDEBE9)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Container(
                    padding: const EdgeInsets.fromLTRB(25, 16, 8, 16),
                    child: Image.asset('asset/png_icons/search.png',),
                  ),
                  contentPadding: EdgeInsets.only(top: 8, bottom: 10),
                  labelText: 'Search',
                  labelStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 170.0),
            const Text("No Leads"),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  // Button onPressed logic
                  Navigator.of(context).pushNamed(CreateLeadScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Ink(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.width * .13,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF2B88D8), Color(0xFF0545EA)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 1.0),
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.transparent),
                                  child: const Padding(
                                      padding: EdgeInsets.all(1.5),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 16.0,
                                      ))),
                              const SizedBox(width: 10.0),
                              const Text('Create a Lead',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ])))),
          ]),)
            : ListView(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            children:  [
              const SizedBox(height: 15.0),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width*.13,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFEDEBE9)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Container(
                      padding: const EdgeInsets.fromLTRB(25, 16, 8, 16),
                      child: Image.asset('asset/png_icons/search.png',),
                    ),
                    contentPadding: EdgeInsets.only(top: 8, bottom: 10),
                    labelText: 'Search',
                    labelStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: const LeadsList()),
            ]),
      ),
    );
  }
  void navTo() {
    Navigator.of(context).pushNamed(LoginVerificationScreen.routeName);
  }
}
