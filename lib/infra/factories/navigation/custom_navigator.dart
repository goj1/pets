import 'package:flutter/material.dart';

class CustomNavigator {
  static void goTo(BuildContext context, String namePage) {
    Navigator.pushNamed(context, namePage);
  }

  static void goToWithClearStack(BuildContext context, String namePage) {
    Navigator.pushNamedAndRemoveUntil(context, namePage, (r) => false);
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context, true);
  }

  static void goBackUntil(BuildContext context, String namePage) {
    Navigator.popUntil(context, ModalRoute.withName(namePage));
  }
}
