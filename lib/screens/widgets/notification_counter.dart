import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class NotificationCounter1 extends StatefulWidget {
  const NotificationCounter1({Key? key}) : super(key: key);

  @override
  State<NotificationCounter1> createState() => _NotificationCounter1State();
}

class _NotificationCounter1State extends State<NotificationCounter1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Utils.not_count > 0 ? const Color(0xFFC70505) : Colors.transparent,
        shape: BoxShape.circle,
      ),
      constraints: const BoxConstraints(
        minWidth: 14,
        minHeight: 14,
      ),
      child: Utils.not_count > 0 ? (
          Utils.not_count > 99 ? const Text(
            "99+", style: TextStyle(
              fontSize: 10.0,
              color: Colors.white),
          ) : Text("${Utils.not_count}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 8.0,
            ),
            textAlign: TextAlign.center,
          )) : const Text(""),);
  }
}

class NotificationCounter2 extends StatefulWidget {
  const NotificationCounter2({Key? key}) : super(key: key);

  @override
  State<NotificationCounter2> createState() => _NotificationCounter2State();
}


class _NotificationCounter2State extends State<NotificationCounter2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      width: 22,
      height: 10,
      decoration: BoxDecoration(
        color: const Color(0xFFC70505),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10)
      ),
      constraints: const BoxConstraints(
        minWidth: 14,
        minHeight: 14,
      ),
      child:  Center(
        child: const Text("99+", style: TextStyle(
                fontSize: 8.0,
                color: Colors.white),
            ),
      ),);
  }
}

