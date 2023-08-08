import 'package:flutter/material.dart';

import '../widgets/reusable_completed.dart';

class CustomerAddedScreen extends StatefulWidget {
  static const routeName = '/customer_added_screen';
  const CustomerAddedScreen({Key? key}) : super(key: key);

  @override
  State<CustomerAddedScreen> createState() => _CustomerAddedScreenState();
}

class _CustomerAddedScreenState extends State<CustomerAddedScreen> {
  @override
  Widget build(BuildContext context) {
    String title = "Customer Added";
    String subtitle = "New Employee created Successfully";
    return Scaffold(
      body: Completed(
        title: title,
        subtitle: subtitle,
      ),
    );
  }
}
