import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CustomTextFormField extends StatelessWidget {
  String? hintText;
  TextStyle? hintTextStyle;
  TextStyle? inputTextStyle;
  InputBorder? inputBorder;
  TextEditingController? controller;
  String? Function(String?)? onValid;
  TextInputType? keyboardType;

  CustomTextFormField({
    super.key,
    this.inputTextStyle,
    this.hintTextStyle,
    this.hintText,
    this.inputBorder,
    this.controller,
    this.onValid,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: inputTextStyle,
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Enter your Username',
        hintStyle: hintTextStyle,
        border: inputBorder,
      ),
      validator: onValid,
    );
  }
}
