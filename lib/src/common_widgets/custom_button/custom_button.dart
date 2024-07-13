import 'package:flutter/material.dart';

import '../../constants/app_colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 12,
      decoration: BoxDecoration(
        color: nextButtonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text('Next'),
    );
  }
}