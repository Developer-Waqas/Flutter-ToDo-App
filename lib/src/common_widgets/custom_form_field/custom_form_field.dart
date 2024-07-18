import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/constants/app_styles/app_style.dart';

class CustomFormField extends StatelessWidget {
  String? hintText;
  TextStyle? hintTextStyle;
  TextStyle? inputTextStyle;
  InputBorder? inputBorder;
  TextEditingController? controller;
  String? Function(String?)? onValid;
  TextInputType? keyboardType;
  void Function(String)? onChanged;
  Widget? suffixIcon;
  bool obscureText;

  CustomFormField({
    super.key,
    this.inputTextStyle,
    this.hintTextStyle,
    this.hintText,
    this.inputBorder,
    this.controller,
    this.onValid,
    this.keyboardType,
    this.onChanged,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: inputTextStyle,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintTextStyle,
        errorStyle: errorTextStyle,
        suffixIcon: suffixIcon,
        border: inputBorder,
      ),
      validator: onValid,
      onChanged: onChanged,
    );
  }
}
