import 'dart:io';

import 'package:eso_e/screens/interactions/client_interactions/client_new_interaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomPopupContainer extends StatelessWidget {
  final VoidCallback removeOverlay;
  final File? file;
  final String? fileName;

  const CustomPopupContainer(this.removeOverlay, this.file, this.fileName, {super.key});

  // get file => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Builder(
        builder: (context) {
          return Container(
              margin: const EdgeInsets.fromLTRB(15.0, 100.0, 15.0, 0.0),
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              width: MediaQuery.of(context).size.width, // Set your desired width here
              height: MediaQuery.of(context).size.width, // Set your desired height here
              decoration: BoxDecoration(
                color: const Color(0xFFE9EBED),
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: [Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                    '',
                    style: TextStyle(fontSize: 16)),
                    GestureDetector(
                      onTap: removeOverlay,
                        child: const Icon(Icons.close))
                ]),
                  file == null ? const Text("Select a Picture",
                    style: TextStyle(fontSize: 15.0)) : Text(fileName!),
                  SizedBox(
                      width: double.maxFinite,
                      height: 280.0,
                      child: file == null ? const Icon(Icons.image, size: 30.0)
                          : Image.file(file!, fit: BoxFit.contain)
                  )
                ]));
        }
      ),
    );
  }
}