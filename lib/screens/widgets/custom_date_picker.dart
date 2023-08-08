import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../utils/utils.dart';

class DatePickerWidget extends StatefulWidget {
   final String myDate;
   final double left;
   final double top;
   final double right;
   final double bottom;

  const DatePickerWidget({super.key,
    required this.myDate,
    required this.left,
    required this.top,
    required this.right,
    required this.bottom
  });

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime? pickedDate;
  String? formattedDate;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(widget.left, widget.top, widget.right, widget.bottom),
    child: Container(
    width: double.maxFinite,
    height: 50.0,
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: const Color(0xFFE9EBED),
    ),
    child: GestureDetector(
      onTap: () async {
        pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime.now()
        );
         formattedDate = DateFormat("EEEE MMMM d, yyyy").format(pickedDate!);
        debugPrint("date is $pickedDate");
        debugPrint("date is $formattedDate");
        Utils.increaseProgress();
        setState(() {});
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              pickedDate != null
                ? Expanded(
                  child: Text("$formattedDate", style: TextStyle(color: Colors.grey[800],
                      fontWeight: FontWeight.w500),),
                )
                : Expanded(
                  child: Text(widget.myDate, style: TextStyle(color: Colors.grey[800],
                      fontWeight: FontWeight.w500),),
                ),
              SvgPicture.asset('asset/svg_icons/date_icon.svg',
                color: Colors.grey[900],
                width: 25,
                height: 25,
              )
            ]),
      ),
    )));
  }
}
