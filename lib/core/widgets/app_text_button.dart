import 'package:docdoc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.bacgrouncColor,
    this.textColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.borderRadius,
    this.borderSideColor,
    this.textStyle,
    required this.text,
    required this.onPressed,
    this.buttonWidth,
    this.buttonHeight,
  });
  final void Function()? onPressed;
  final Color? bacgrouncColor;
  final Color? textColor;
  final Color? borderSideColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final BorderRadius? borderRadius;
  final String text;
  final TextStyle? textStyle;
  final double? buttonWidth, buttonHeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding?.w ?? 12.w,
          vertical: verticalPadding?.h ?? 14.h,
        ),
        backgroundColor: bacgrouncColor ?? ColorsManager.mainBlue,
        side: BorderSide(color: borderSideColor ?? ColorsManager.mainBlue),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16.r),
        ),
        fixedSize: Size(
          buttonWidth?.w ?? MediaQuery.of(context).size.width,
          buttonHeight ?? 50.h,
        ),
      ),
      child: Text(text, style: textStyle, textAlign: TextAlign.center),
    );
  }
}
