import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rahil_shaikh/core/core.dart';

class BottomNavigationBarUI extends StatelessWidget {
  const BottomNavigationBarUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<BottomNavigationBarController>(
        init: BottomNavigationBarController(),
        builder: (controller) {
          return Scaffold(
            body: controller.currentPage.value,
            bottomNavigationBar: Container(
              decoration: BoxDecoration(gradient: MyAppColors.customAppLinearColor),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                selectedLabelStyle: TextStyle(fontFamily: FontFamily.sfProSemiBold.name, fontSize: 8.sp, color: MyAppColors.primaryWhiteColor,fontWeight: FontWeight.w800),
                unselectedLabelStyle: TextStyle(fontFamily: FontFamily.sfProRegular.name, fontSize: 8.sp, color: MyAppColors.primaryDarkGreyColor),
                selectedItemColor: MyAppColors.primaryWhiteColor,
                unselectedItemColor: MyAppColors.primaryDarkGreyColor,
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  controller.changeTab(index);
                },
                currentIndex: controller.navigationIndex.value,
                items: controller.navigationBarData
                    .mapIndexed((index, item) => BottomNavigationBarItem(
                          icon: item.key == "account"
                              ? Padding(
                                padding: EdgeInsets.only(bottom: 3.h),
                                child: Container(
                                    width: 25.sp,
                                    height: 25.sp,
                                    decoration: BoxDecoration(border: Border.all(color: MyAppColors.primaryWhiteColor, width: 2.w), color: MyAppColors.primaryYellowColor, shape: BoxShape.circle),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(14.sp),
                                        child: Image.asset(
                                          "icons/ic_avatar.png",
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                              )
                              : SizedBox(
                                  width: 28.sp,
                                  height: 28.sp,
                                  child: Image.asset(
                                    controller.navigationIndex.value == index ? item.activeIcon ?? "" : item.inactiveIcon ?? "",
                                  ),
                                ),
                          label: item.labelName,
                        ))
                    .toList(),
              ),
            ),
          );
        });
  }
}
