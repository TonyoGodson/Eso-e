import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget textField(
    String hint,
    String? image,
    bool isPasswordType,
    bool isData,
    TextEditingController controller,
    int maxLines,
    int maxLength,
    String errorMsg,
    Function onChanged,

    double left,
    double top,
    double right,
    double bottom,
    ) {
  return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: Container(
          width: double.maxFinite,
          height: 50.0,
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFFE9EBED),
            // color: const Color(0xFFEDEBE9),
          ),
          child: TextFormField(
              controller: controller,
              obscureText: isPasswordType,
              cursorColor: Colors.black,
              maxLines: maxLines,
              maxLength: maxLength,
              validator: (value) {
               if (value == null || value.isEmpty) {
                 return errorMsg;
                }
               return null;
            },
            onEditingComplete: () {
              onChanged();
            },
            decoration: InputDecoration(
              border: const UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
              prefixIcon: isData ? Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                child: SvgPicture.asset(image!, width: 0, color: Colors.black54,),
              ) : null,
              hintText: hint,
              counterText: "",
              hintStyle: TextStyle(color: Colors.grey[800])
            ),
          )));
}
