
import 'package:docdoc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; 

class TextStyles {
  static TextStyle font24black700Weight= TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font32blueBold= TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
  );

static TextStyle font13bgreyregular= TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.grey,
  );
  
  static TextStyle font16whitesemibold= TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );


}