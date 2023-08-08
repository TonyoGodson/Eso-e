import 'dart:io';

import 'package:eso_e/screens/interactions/client_interactions/client_recent_interactions_screen.dart';
import 'package:eso_e/screens/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/utils.dart';
import '../../create_customer/customer_added_screen.dart';
import '../../widgets/appbar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/popup_overlay.dart';
import 'lead_interaction_created.dart';



class LeadNewInteractionScreen extends StatefulWidget {
  static const routeName = 'new_lead_interactions_screen';
  const LeadNewInteractionScreen({Key? key}) : super(key: key);

  @override
  State<LeadNewInteractionScreen> createState() => _LeadNewInteractionScreenState();
}

class _LeadNewInteractionScreenState extends State<LeadNewInteractionScreen> {
  TextEditingController interactionTitle = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController attachment = TextEditingController();

  String officeName = "Office Name";
  String category = "Category";
  String subCategory = "Sub-Category";
  String responsibleDepartment = "Responsible Department";
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (notification) {
        notification.disallowIndicator(); // Disable overscroll effect
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            toolbarHeight: 48.0,
            backgroundColor: Colors.grey[100],
            automaticallyImplyLeading: false,
            flexibleSpace:  AppBarWidget(
              toolbarHt: 48.0,
              context: context,
              onTap: navTo,
              shape: BoxShape.rectangle,
              color: const Color(0x2F2D88D8),
              color2: const Color(0xFF2D88D8),
              content: "New Interactions",
              content2: "",
              content3: "",
              c_width: 0.0,
              c_height: 0.0,
              radius: 0.0,
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              sizedBoxHt: 0.0,
              backBtnHt: 30.0,
              backBtnWt: 30.0,
              backBtnRd: 8.0,
              iconSize: 22.0,
              padding: 0.0,
              animation: false,
              duration: 0,
              height: 0.0,
              percent: 0.0,
              progressRadius: 0.0,
              lerp: 0.0,
              isCurved: false,
              backPaddingLeft: 15.0,
              backPaddingTop: 0.0,
              backPaddingRight: 0.0,
              backPaddingBottom: 10.0,
            )),
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            textField(
                "Interaction Title", null, false,
                false, interactionTitle, 1,
                100, "Please enter a title",
                    (){
                  setState(() {
                    Utils.increaseProgress();
                  });
                }, 15, 0, 15, 0),
            SizedBox(
                height: 100,
                child: textField(
                    "Description", null, false,
                    false, description, 15,
                    500, "Please enter a description",
                        (){
                      setState(() {
                        Utils.increaseProgress();
                      });
                    }, 15, 15, 15, 0)),
            DropdownWidget(
                valueChoose: officeName,
                listItem: const [
                  "Office Name",
                  "Another Name1",
                  "Another Name2",
                  "Another Name3"
                ],
                hint: "Office Name",
                left: 15.0,
                top: 15.0,
                right: 15.0,
                bottom: 0.0 ),
            Row(
              children: [
                Expanded(
                  child: DropdownWidget(
                      valueChoose: category,
                      listItem: const [
                        "Category",
                        "Category 1",
                        "Category 2",
                        "Category 3"
                      ],
                      hint: "Category",
                      left: 15.0,
                      top: 15.0,
                      right: 7.0,
                      bottom: 0.0 ),
                ),
                Expanded(
                    child: DropdownWidget(
                        valueChoose: subCategory,
                        listItem: const [
                          "Sub-Category",
                          "Sub-Category 2",
                          "Sub-Category 3",
                          "Sub-Category 4"
                        ],
                        hint: "Sub-Category",
                        left: 7.0,
                        top: 15.0,
                        right: 15.0,
                        bottom: 0.0 ))],
            ),
            Container(
                width: double.maxFinite,
                height: 50.0,
                margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFE9EBED),
                  // color: const Color(0xFFEDEBE9),
                ),
                child: TextFormField(
                  controller: attachment,
                  cursorColor: Colors.black,
                  maxLines: 1,
                  readOnly: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please choose a file";
                    }
                    return null;
                  },
                  onEditingComplete: () {

                  },
                  decoration: InputDecoration(
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: file == null ? "Attachment(e.g JPG, PNG) and 5mb limit."
                                : "$fileName",
                      counterText: "",
                      hintStyle: TextStyle(color: Colors.grey[800])
                  ),
                )),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    clearAll();
                  },
                  child: Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0x22C70505)),
                      child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: SvgPicture.asset("asset/svg_icons/delete_icon.svg", color: Colors.red))),
                ),
                const SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showPopup(context);
                      // _showPopUpContainer(context);
                      debugPrint("eye tapped");
                    });
                  },
                  child: Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0x222D88D8)),
                      child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: SvgPicture.asset("asset/svg_icons/eye_icon.svg", color: const Color(0xFF2D88D8)))),
                ),
                const SizedBox(width: 10.0),
                SizedBox(
                  width: 160.0,
                  height: 40.0,
                  child: Button(
                      "Browse Files", const Color(0x332D88D8), const Color(0xFF2D88D8),
                      () => {
                        debugPrint("browse files clicked"),
                            getGallery()},
                      12.0, 5.0, 0.0, 15.0, 0.0),
                )]),
            const SizedBox(height: 5.0),
            Row(
              children: [Checkbox(value: checkboxValue,
                  onChanged: (value){
                    setState(() {
                      checkboxValue = value!;
                    });
                  }),
                const Text("High Priority")
              ],
            ),
            // const SizedBox(height: 20.0),
            DropdownWidget(
                valueChoose: responsibleDepartment,
                listItem: const ["Responsible Department", "Department 1", "Department 2"],
                hint: "Responsible Department",
                // onChanged: (newValue){
                //   responsibleDepartment = newValue;
                // },
                left: 15.0,
                top: 0.0,
                right: 15.0,
                bottom: 0.0),
            Row(
              children: [
                Expanded(
                  child: Button(
                      "Cancel",
                      const Color(0x22C70505),
                      const Color(0xFFC70505),
                          () {
                            clearAll();
                        setState(() {
                          clearFields();
                        });
                      },
                      12.0, 15.0, 25.0, 7.0, 0.0),
                ),
                Expanded(
                  child: Button(
                      "Submit",
                      const Color(0xFF2D88D8),
                      const Color(0xFFFFFFFF),
                          () {
                        _handleFormSubmit(context);
                      },
                      12.0, 7.0, 25.0, 15.0, 0.0),
                ),
              ],
            )
          ],

        ),
      ),
    );
  }
  void navTo(){
    Navigator.pop(context);
  }
  void clearFields(){
    interactionTitle.text = "";
    description.text = "";
    attachment.text = "";
  }
  void _handleFormSubmit(BuildContext context) async {
    Navigator.of(context).pushNamed(LeadInteractionCreatedScreen.routeName);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pop(context);
    });
  }
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    _overlayEntry = OverlayEntry(
      builder: (context) => CustomPopupContainer(_removePopup, file, fileName),
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }

  void _showPopup(BuildContext context) {
    _overlayEntry ??= OverlayEntry(
      builder: (context) => CustomPopupContainer(_removePopup, file, fileName),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }
  void _removePopup() {
    _overlayEntry?.remove();
    _overlayEntry = null; // Reset the OverlayEntry to null
  }

  File? file;
  String? fileName;
  String? extension;
  int? fileSize;
  ImagePicker image = ImagePicker();
  getGallery() async{
    var img = await image.pickImage(source: ImageSource.gallery);
    extension = img!.path.split('.').last.toLowerCase();
    fileSize = await img.length();

    if((extension == 'png' || extension == 'jpg') && fileSize! <= (5 * 1024 * 1024)) {
      setState(() {
        file = File(img.path);
        fileName = img.name;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Invalid Image. Image must be PNG or JPG "
            "and must not be more than 5MB in size."),
      ));
    }
  }
  void clearAll() {
    setState(() {
      file = null;
      fileName = null;
      extension = null;
      fileSize = null;
    });
  }
}
