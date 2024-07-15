import 'package:flutter/material.dart';

import '../../constants/app_colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  final Color? buttonColor;
  final double buttonBorderRadius;
  final String buttonTitle;
  final TextStyle? buttonTextStyle;
  final EdgeInsetsGeometry? buttonPadding;
  final VoidCallback onPressed;
  final BoxBorder? buttonBorder;

  CustomButton({
    super.key,
    this.buttonHeight = 48,
    this.buttonWidth = 90,
    this.buttonColor,
    this.buttonBorderRadius = 8,
    required this.buttonTitle,
    this.buttonTextStyle,
    this.buttonPadding,
    required this.onPressed,
    this.buttonBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      width: buttonWidth,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(buttonBorderRadius),
          border: buttonBorder),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          buttonTitle,
          style: buttonTextStyle,
        ),
      ),
    );
  }
}
