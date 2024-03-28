import "package:flutter/material.dart";
import "package:task_management/widgets/constant.dart";

// ignore: depend_on_referenced_packages
Widget customText(String text, double size) {
  return Text(text,
      style: TextStyle(
        fontSize: size,
        color: kDark,
        fontWeight: FontWeight.bold,
      ));
}
