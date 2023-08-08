

import 'package:flutter/material.dart';


// class DropdownExample extends StatefulWidget {
//   @override
//   _DropdownExampleState createState() => _DropdownExampleState();
// }

// class _DropdownExampleState extends State<DropdownExample> {
//   late String valueChoose;
//   List<dynamic> listItem = ['Item 1', 'Item 2', 'Item 3'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: dropdown(
//         valueChoose,
//         listItem,
//         'Select an item',
//             (newValue) {
//           setState(() {
//             valueChoose = newValue;
//           });
//         },
//       ),
//     );
//   }
//
//   Widget dropdown(
//       String valueChoose,
//       List<dynamic> listItem,
//       String hint,
//       Function(String) onChanged,
//       ) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
//       child: Container(
//         width: double.maxFinite,
//         height: 50.0,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: const Color(0xFFEDEBE9),
//         ),
//         child: Center(
//           child: DropdownButton(
//             hint: Text(hint),
//             value: valueChoose,
//             onChanged: onChanged,
//             items: listItem.map((valueItem) {
//               return DropdownMenuItem(
//                 value: valueItem,
//                 child: Text(valueItem),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }

class DropdownWidget extends StatefulWidget {
  late  var valueChoose;
  final List<dynamic> listItem;
  final String hint;
  final double left;
  final double top;
  final double right;
  final double bottom;
   DropdownWidget({super.key,
    required this.valueChoose,
    required this.listItem,
    required this.hint,
    required this.left,
    required this.top,
    required this.right,
    required this.bottom
  });

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
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
        child: Center(
          child: DropdownButton(
            hint: Text(widget.hint, style: TextStyle(color: Colors.grey[800])),
            icon: const Icon(Icons.keyboard_arrow_down_sharp),
            isExpanded: true,
            underline: const SizedBox(),
            value: widget.valueChoose,
            onChanged: (newValue){
              setState(() {
                widget.valueChoose = newValue;
              });
            },
            items: widget.listItem.map((valueItem) {
              return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem, style: TextStyle(color: Colors.grey[800])));
            }).toList(),
          ),
        ),
      ),
    );
  }
}




Widget Dropown(
    String valueChoose,
    List<dynamic> listItem,
    String hint,
    ){
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
    child: Container(
      width: double.maxFinite,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFE9EBED)),
      child: Center(
          child: DropdownButton(
            hint: Text(hint),
            value: valueChoose,
            onChanged: (newValue) {
                  (){};
            },
            items: listItem.map((valueItem) {
              return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem));
            }).toList(),
          )
      ),
    ),
  );
}
