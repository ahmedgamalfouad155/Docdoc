import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  setupGetIt();
    // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp( DocApp(
    appRouter: AppRouter(),
  ));
}


/*
feature/onboarding

ahmedgamal@gmail.com
Ahmedgamal@1
*/ 