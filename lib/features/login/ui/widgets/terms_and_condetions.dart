import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndCondetions extends StatelessWidget {
  const TermsAndCondetions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "By Logging,you agree to our ",
        style: TextStyles.font13GreyRegular,
        children: [
          TextSpan(
            text: "Terms & Conditions ",
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: "and  ",
            style: TextStyles.font13GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
