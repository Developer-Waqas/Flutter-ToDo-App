
import 'package:flutter/material.dart';

import '../../../../../common_widgets/custom_form_field/custom_form_field.dart';
import '../../../../../constants/app_colors/app_colors.dart';
import '../../../../../constants/app_styles/app_style.dart';
import '../../../../../constants/text_strings/text_strings.dart';

class ForgotPasswordHeaderWidget extends StatelessWidget {
  const ForgotPasswordHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: CustomFormField(
        keyboardType: TextInputType.emailAddress,
        inputTextStyle: onBoardingSubTitleStyle,
        hintText: loginText3,
        hintTextStyle: hintTextStyle,
        inputBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: borderColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
