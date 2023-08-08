import 'package:flutter/material.dart';

class PopUpContainerWidget extends StatefulWidget {
  const PopUpContainerWidget({Key? key}) : super(key: key);

  @override
  State<PopUpContainerWidget> createState() => _PopUpContainerWidgetState();
}

class _PopUpContainerWidgetState extends State<PopUpContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(" Pop up Date Picker"),
      content: const Text("Select Date"),
      actions: [TextButton(
        onPressed: (){
          // Navigator.of(context).pop();
        },
        child: const Text("Close"),
      )],
    );
  }
}
