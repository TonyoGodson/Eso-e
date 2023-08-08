import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 5, 15, 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                width: 120,
                height: 50,
                child: Image.asset(
                  'asset/png_icons/esoe_logo2.png'),),
               CircleAvatar(
                  radius: 17.0,
                  backgroundColor: const Color(0x222B88D8),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      color: Color(0xFF2B88D8),
                    ),
                  ))
            ]),
            const SizedBox(height: 20),
            const Text('Main', style: TextStyle(color: Color(0xff757575)),),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                margin: const EdgeInsets.only(top: 10, right: 15.0),
                padding: const EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2B88D8), Color(0xFF0545EA)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                ),
                child:  Row(children: [
                  SvgPicture.asset('asset/svg_icons/dashboard_icon.svg',
                    color: Colors.grey[100],
                    height: 20.0,
                    width: 50.0,
                  ),
                  SizedBox(width: 10),
                  Text('Dashboard', style: TextStyle(color: Colors.white),)
                ],),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                margin: const EdgeInsets.only(top: 10, right: 15.0),
                padding: const EdgeInsets.only(left: 15, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.transparent
                ),
                child: Row(children: [
                  SvgPicture.asset('asset/svg_icons/document_icon.svg',
                    color: Colors.grey,
                    height: 20.0,
                    width: 50.0,
                  ),
                  const SizedBox(width: 7),
                  const Expanded(child: Text('Loan Collections', style: TextStyle(color: Colors.grey),)),
                  const Icon(Icons.arrow_forward_ios, size: 12.0,)
                ],),
              ),
            ),
            const SizedBox(height: 15),
            const Text('Accounts', style: TextStyle(color: Color(0xff757575)),),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                margin: const EdgeInsets.only(top: 10, right: 15.0),
                padding: const EdgeInsets.only(left: 15, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.transparent
                ),
                child: Row(children: [
                  SvgPicture.asset('asset/svg_icons/leads_icon.svg',
                    color: Colors.grey,
                    height: 20.0,
                    width: 50.0,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(child: Text('CRM', style: TextStyle(color: Colors.grey),)),
                  const Icon(Icons.arrow_forward_ios, size: 12.0,)
                ],),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                margin: const EdgeInsets.only(top: 10, right: 15.0),
                padding: const EdgeInsets.only(left: 15, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.transparent
                ),
                child: Row(children: [
                  SvgPicture.asset('asset/svg_icons/accounting_icon.svg',
                    color: Colors.grey,
                    height: 20.0,
                    width: 50.0,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(child: Text('Accounting', style: TextStyle(color: Colors.grey),)),
                  const Icon(Icons.arrow_forward_ios, size: 12.0,)
                ],),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                margin: const EdgeInsets.only(top: 10, right: 15.0),
                padding: const EdgeInsets.only(left: 15, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.transparent
                ),
                child: Row(children: [
                  SvgPicture.asset('asset/svg_icons/dashboard_icon.svg',
                    color: Colors.grey,
                    height: 20.0,
                    width: 50.0,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(child: Text('Report', style: TextStyle(color: Colors.grey),)),
                  const Icon(Icons.arrow_forward_ios, size: 12.0,)
                ],),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                margin: const EdgeInsets.only(top: 10, right: 15.0),
                padding: const EdgeInsets.only(left: 15, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.transparent
                ),
                child:  Row(children: [
                  SvgPicture.asset('asset/svg_icons/admin_icon.svg',
                    color: Colors.grey,
                    height: 20.0,
                    width: 50.0,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(child: Text('Admin', style: TextStyle(color: Colors.grey),)),
                  const Icon(Icons.arrow_forward_ios, size: 12.0,)
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
