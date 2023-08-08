import 'package:flutter/material.dart';

import '../widgets/reusable_completed.dart';

class LeadAddedScreen extends StatefulWidget {
  static const routeName = '/lead_added_screen';
  const LeadAddedScreen({Key? key}) : super(key: key);

  @override
  State<LeadAddedScreen> createState() => _LeadAddedScreenState();
}

class _LeadAddedScreenState extends State<LeadAddedScreen> {
  @override
  Widget build(BuildContext context) {
    String title = "New Lead Added";
    String subtitle = "New Lead created Successfully";
    return Scaffold(
      body: Completed(
        title: title,
        subtitle: subtitle,
      ),
    );
  }
}
