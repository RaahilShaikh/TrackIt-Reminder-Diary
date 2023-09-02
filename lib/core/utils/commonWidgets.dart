import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rahil_shaikh/core/core.dart';

/// this widget is use to display coming soon section.
/// eg: coming soon()
Widget comingSoonView() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        "icons/ic_comingSoon.png",
        height: 70.sp,
        width: 70.sp,
        color: MyAppColors.primaryDarkGreyColor
      ),
      SizedBox(height: 10.h),
      CustomText(text: "Coming soon...",textSize: 30.sp,color: MyAppColors.primaryDarkGreyColor),
    ],
  );
}

/// CustomScaffold have the on keyboard close event by-default.
/// this customScaffold set default background color.
/// set resizeToAvoidBottomInset false by-default.
Widget customScaffold({Widget? body, bool? resizeToAvoidBottomInset = false}) {
  return GestureDetector(
    onTap: () {
      FocusManager.instance.primaryFocus?.unfocus();
    },
    child: Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Container(decoration: BoxDecoration(gradient: MyAppColors.customAppLinearColor), child: body),
    ),
  );
}
