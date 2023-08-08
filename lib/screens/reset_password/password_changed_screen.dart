import 'package:flutter/material.dart';

import '../widgets/reusable_completed.dart';

class PasswordChangedScreen extends StatefulWidget {
  static const routeName = '/password_changed_screen';
  const PasswordChangedScreen({Key? key}) : super(key: key);

  @override
  State<PasswordChangedScreen> createState() => _PasswordChangedScreenState();
}

class _PasswordChangedScreenState extends State<PasswordChangedScreen> {
  @override
  Widget build(BuildContext context) {
    String title = "Password Changed";
    String subtitle = "Your password has been successfully created";
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Completed(
        title: title,
        subtitle: subtitle,
      ),
    );
  }
}


