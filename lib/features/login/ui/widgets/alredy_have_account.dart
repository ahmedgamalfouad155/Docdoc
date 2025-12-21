import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlredyHaveAccount extends StatelessWidget {
  const AlredyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Already have an account?",
        style: TextStyles.font13DarkBlueRegular,
        children: [
          TextSpan(text: " Sign Up", style: TextStyles.font13BlueSemiBold),
        ],
      ),
    );
  }
}
