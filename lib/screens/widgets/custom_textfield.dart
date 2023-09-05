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

// @override
// Widget build(BuildContext context) {
//   double cHeight = MediaQuery.of(context).size.height;
//   double cWidth = MediaQuery.of(context).size.width;
//   TextEditingController textfield = TextEditingController();
//   String employmentType = "Employment Type";
//
//   return Scaffold(
//       appBar: const HiAppBar(),
//       // isBusy: context.watch<HomeController>().loading,
//       backgroundColor: ColorUtils.WHITE_COLOR,
//       // bodyMargin: EdgeInsets.symmetric(vertical: 0),
//       // bodyPadding: EdgeInsets.symmetric(horizontal: 0),
//       body: ListView(
//         children: [
//           DropdownWidget(
//               valueChoose: employmentType,
//               listItem: const ["Employment Type", "Contract", "Full Staff"],
//               hint: "Employment Type",
//               left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
//           CustomButtons(
//             text: "My Button",
//             textColor: ColorUtils.MAIN_RED,
//             buttonColor: ColorUtils.LIGHT_BLUE,
//             onTap: (){},
//             isGradientBtn: false,
//             radius: 0.0,
//             paddingLeft: 0.0,
//             paddingRight: 0.0,
//             paddingTop: 0.0,
//             paddingBottom: 0.0,
//           ),
//           SizedBox(height: 20,),
//           MyTextFields(
//             editController: textfield,
//             labelText: "Text",
//             hintText: "Field",
//             isObscure: false,
//             maxLenghtAllow: 21,
//             maxLines: 1,
//             radius: 0.0,
//             paddingBottom: 0.0,
//             paddingTop: 0.0,
//             paddingRight: 0.0,
//             paddingLeft: 0.0,
//             password: true,
//             suffixIcon: const Icon(Icons.lock),
//             validator: (value){},
//             eyeOpen: true,
//             keyBoard: TextInputType.number,
//
//           ),
//         ],)
//   );
// }