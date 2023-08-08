import 'package:eso_e/screens/reset_password/password_changed_screen.dart';
import 'package:flutter/material.dart';

import 'otp_code_screen.dart';

class SetNewPasswordScreen extends StatefulWidget {
  static const routeName = '/set_new_password_screen';
  const SetNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: Container(
          padding: const EdgeInsets.fromLTRB(30, 3, 15, 3),
          color: Colors.grey[100],
          child: Image.asset(
            'asset/esoe_logo2.png',
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
                  Navigator.of(context).pushNamedAndRemoveUntil(OTPCodeScreen.routeName,
                        (route) => false,);
                },
                  icon: const Icon(Icons.arrow_back_ios,
                    size: 20.0,
                    color: Colors.black,
                  ),
                ),)
            ],),
            const SizedBox(height: 18.0,),
            const Text("Set New Password",
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
                  // prefixIcon: Container(
                  //   padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
                  //   child: Image.asset('asset/message.png',),
                  // ),
                  contentPadding: EdgeInsets.only(top: 8, left: 15, bottom: 10),
                  labelText: 'Enter Password',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(color: Colors.black),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 15.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width*.13,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xFFEDEBE9)
              ),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  // prefixIcon: Container(
                  //   padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
                  //   child: Image.asset('asset/lock.png',),
                  // ),
                  contentPadding: EdgeInsets.only(top: 8, left: 15, bottom: 10),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(color: Colors.black),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 40.0,),
            ElevatedButton(
              onPressed: () {
                // Button onPressed logic
                Navigator.of(context).pushNamed(PasswordChangedScreen.routeName);
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
                      'Reset Password',
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
