import 'package:eso_e/screens/login_account/login_verification_screen.dart';
import 'package:eso_e/screens/reset_password/reset_password_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  static const routeName = '/login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
             padding: const EdgeInsets.fromLTRB(30, 0, 30, 50),
               children: [
                 const SizedBox(height: 80.0,),
                 const Text("Welcome Back",
                   style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),),
                 const SizedBox(height: 10.0,),
                 const Text("Log In your account",
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
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       prefixIcon: Container(
                         padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
                         child: Image.asset('asset/png_icons/message.png',),
                       ),
                       contentPadding: const EdgeInsets.only(top: 8, bottom: 10),
                       labelText: 'Email',
                       labelStyle: const TextStyle(color: Colors.black),
                       hintText: 'Email',
                       hintStyle: const TextStyle(color: Colors.black),
                     ),
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return 'Please enter your email';
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
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       prefixIcon: Container(
                         padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
                         child: Image.asset('asset/png_icons/lock.png',),
                       ),
                       contentPadding: EdgeInsets.only(top: 8, bottom: 10),
                       labelText: 'Password',
                       labelStyle: TextStyle(color: Colors.black),
                       hintText: 'Password',
                       hintStyle: TextStyle(color: Colors.black),
                     ),
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return 'Please enter a password';
                       }
                       return null;
                     },
                   ),
                 ),
                 const SizedBox(height: 10.0,),
                 Align(
                     alignment: Alignment.bottomRight,
                     child: GestureDetector(
                       onTap: () {
                         Navigator.of(context).pushNamed(ResetPasswordScreen.routeName);
                       },
                       child: const Text("Forgot Password",
                         style: TextStyle(
                             fontSize: 13.0,
                             fontWeight: FontWeight.w400,
                             color: Color(0xFFA80000),
                             decoration: TextDecoration.underline,
                         ),),
                     ),
                 ),
                 const SizedBox(height: 40.0,),
                 ElevatedButton(
                   onPressed: () {
                     // Button onPressed logic
                     Navigator.of(context).pushNamed(LoginVerificationScreen.routeName);
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
                           'Login',
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
