import 'dart:async';

import 'package:flutter/material.dart';

import '../../widgets/reusable_completed.dart';

class ClientInteractionCreatedScreen extends StatelessWidget {
  static const routeName = '/client_interaction_created_screen';
  const ClientInteractionCreatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Completed(
        title: "Interaction Created",
        subtitle: "",
      ),
    );
  }
}
