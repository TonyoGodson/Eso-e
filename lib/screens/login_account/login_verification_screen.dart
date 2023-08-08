import 'package:flutter/material.dart';

import '../dashboard/home.dart';
import '../dashboard/bottom_nav_screens/dashboard_screen.dart';
import 'login_screen.dart';

class LoginVerificationScreen extends StatefulWidget {
  static const routeName = '/login_verification_screen';
  const LoginVerificationScreen({Key? key}) : super(key: key);

  @override
  State<LoginVerificationScreen> createState() => _LoginVerificationScreenState();
}

class _LoginVerificationScreenState extends State<LoginVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: Container(
          padding: const EdgeInsets.fromLTRB(30, 3, 15, 3),
          color: Colors.grey[100],
          child: Image.asset(
            'asset/png_icons/esoe_logo2.png',
            fit: BoxFit.contain, ),),
          leadingWidth: 150.0,
          backgroundColor: Colors.grey[100],
          elevation: 0,
        ),
      backgroundColor: Colors.grey[100],
      body:
      ListView(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 50),
          children: [
            const SizedBox(height: 20.0,),
            Row(children: [
              Container(
                width: 65.0,
                height: 35.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFEDEBE9),
                  borderRadius: BorderRadius.circular(7.0),
                ),
                padding: EdgeInsets.only(top: 0.0),
                child:  IconButton(onPressed: (){
                  Navigator.of(context).pushNamedAndRemoveUntil(LoginScreen.routeName,
                        (route) => false,);
                },
                  icon: const Icon(Icons.arrow_back_ios,
                  size: 20.0,
                  color: Colors.black,
                ),
              ),)
            ],),
            const SizedBox(height: 18.0,),
            const Text("Verification",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),),
            const SizedBox(height: 10.0,),
            const Text("Enter the six (6) digit verification code sent to \n+2348*****40 or ti****gn@gmail.com to continue",
              style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.black),),
            const SizedBox(height: 30.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width*.13,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xFFEDEBE9)
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 8, left: 15, bottom: 10),
                  labelText: 'Verification Code',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Verification Code',
                  hintStyle: TextStyle(color: Colors.black),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the verification code';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 35.0,),
            ElevatedButton(
              onPressed: () {
                // Button onPressed logic
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Ink(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width*.13,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2B88D8), Color(0xFF0545EA)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Verify Login',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
