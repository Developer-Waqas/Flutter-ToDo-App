import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Color buttonColor;
  final IconData buttonIcon;
  final double buttonSize;
  final VoidCallback buttonPressed;

  const CustomIconButton({
    super.key,
    required this.buttonIcon,
    required this.buttonPressed,
    required this.buttonColor,
    required this.buttonSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonPressed,
      child: Icon(
        color: buttonColor,
        buttonIcon,
        size: buttonSize,
      ),
    );
  }
}
