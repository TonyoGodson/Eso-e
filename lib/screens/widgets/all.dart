// static bool _validateNIN(String? ninController) {
// if (!_validateFieldNotEmpty(ninController, "NIN field is empty")) return false;
// if (!ninController!.isNumericOnly(ninController)) {
// locator.get<ToastService>().showError("NIN must be a Number");
// return false;
// }
// if (ninController.length < 11) {
// locator.get<ToastService>().showError('NIN must be more than 10 digits');
// return false;
// }
// return true;
// }
//
// // static String? validateBvn(String? bvnNumber) {
// // static String? validateInputs(
// //     String? bvnNumber, String? selectedSector,
// //     String? selectedTitle, String? firstName,
// //     String? middleName, String? lastName,
// //     String? ninController, String? gender
// //     ) {
// //   if (selectedSector.equalsIgnoreCase("")) {
// //     debugPrint(selectedSector);
// //     return locator.get<ToastService>().showError("Select a Sector");
// //   }
// //   if (isEmpty(bvnNumber)) {
// //     return locator.get<ToastService>().showError("BVN field is empty");
// //   }
// //   if (!bvnNumber.isNumericOnly(bvnNumber!)) {
// //     return locator.get<ToastService>().showError("BVN must be a Number");
// //   }
// //   if (bvnNumber.length < 11) {
// //     return locator.get<ToastService>()
// //         .showError('BVN must be more than 10 digits');
// //   }
// //   if (selectedTitle.equalsIgnoreCase("")) {
// //     return locator.get<ToastService>().showError("Select a Title");
// //   }
// //
// //   if (isEmpty(firstName)) {
// //     return locator.get<ToastService>()
// //         .showError("First Name field is empty");
// //   }
// //   if (!firstName.isAlphabetOnly(firstName!)) {
// //     return locator.get<ToastService>()
// //         .showError("First Name must be letters only");
// //   }
// //   if (isEmpty(middleName)) {
// //     return locator.get<ToastService>()
// //         .showError("Middle Name field is empty");
// //   }
// //   if (!middleName.isAlphabetOnly(middleName!)) {
// //     return locator.get<ToastService>()
// //         .showError("Middle Name must be letters only");
// //   }
// //   if (isEmpty(lastName)) {
// //     return locator.get<ToastService>()
// //         .showError("Last Name field is empty");
// //   }
// //   if (!lastName.isAlphabetOnly(lastName!)) {
// //     return locator.get<ToastService>()
// //         .showError("Last Name must be letters only");
// //   }
// //   if (isEmpty(ninController)) {
// //     return locator.get<ToastService>()
// //         .showError("National Identity Number field is empty");
// //   }
// //   if (!ninController.isNumericOnly(ninController!)) {
// //     return locator.get<ToastService>().showError("NIN must be a Number");
// //   }
// //
// //   if (ninController.length < 11) {
// //     return locator.get<ToastService>()
// //         .showError('NIN must be more than 10 digits');
// //   }
// //   if (gender == "") {
// //     return locator.get<ToastService>()
// //         .showError("Choose a gender");
// //   }
// //   return null;
// // }