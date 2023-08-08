import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  final String title;
  final String subtitle;

  const Completed({super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.fromLTRB(30, 80, 30, 50),
        children: [
          const SizedBox(height: 120.0,),
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'asset/png_icons/successful.png',
                fit: BoxFit.contain, )
          ),
          const SizedBox(height: 50.0,),
          Align(
            alignment: Alignment.topCenter,
            child: Text(title,
              style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),),
          ),
          const SizedBox(height: 2.0,),
          Align(
            alignment: Alignment.topCenter,
            child: Text(subtitle,
              style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Colors.black),),
          ),
        ]);
  }
}
