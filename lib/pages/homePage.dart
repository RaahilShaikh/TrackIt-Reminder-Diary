import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rahil_shaikh/core/core.dart';

class HomePageUI extends StatelessWidget {
  const HomePageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      body: SafeArea(
        top: true,
        child: GetX<HomePageController>(
            init: HomePageController(),
            builder: (controller) {
              return Column(
                children: [
                  /// Top section (App bar view)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 16.w),
                    child: Row(children: [
                      Stack(alignment: Alignment.center, children: [
                        Image.asset("icons/ic_blueOval.png", height: 30.sp, width: 30.sp),
                        CustomText(
                          text: "999",
                          textSize: 10.sp,
                          fontFamily: FontFamily.sfProSemiBold,
                          fontWeight: FontWeight.w800,
                          color: MyAppColors.primaryWhiteColor,
                        )
                      ]),
                      SizedBox(width: 5.w),
                      Expanded(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                        CustomText(
                          text: "Total",
                          textSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: MyAppColors.primaryWhiteColor,
                          fontFamily: FontFamily.sfProRegular,
                        ),
                        CustomText(
                          text: "Experience",
                          textSize: 10.sp,
                          fontWeight: FontWeight.w600,
                          color: MyAppColors.primaryBlueColor,
                          fontFamily: FontFamily.sfProRegular,
                        ),
                      ])),
                      Container(
                          height: 30.sp,
                          width: 70.w,
                          decoration: BoxDecoration(color: MyAppColors.primaryYellowColor, borderRadius: BorderRadius.circular(15.sp)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("icons/ic_coin.png", height: 30.sp, width: 30.sp),
                              SizedBox(width: 3.w),
                              CustomText(
                                text: "346",
                                textSize: 22.sp,
                                fontFamily: FontFamily.alumniSansBold,
                                fontWeight: FontWeight.w700,
                              )
                            ],
                          )),
                      SizedBox(width: 5.w),
                      Image.asset("icons/ic_dialog.png", height: 30.sp, width: 30.sp),
                      SizedBox(width: 5.w),
                      Image.asset("icons/ic_calendar.png", height: 30.sp, width: 30.sp),
                      SizedBox(width: 5.w),
                      Image.asset("icons/ic_menu.png", height: 30.sp, width: 30.sp)
                    ]),
                  ),

                  /// Divider section
                  Divider(color: MyAppColors.primaryLightBlackColor),

                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        /// Clock and weather section
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 16.w),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                height: 105.sp,
                                width: double.infinity,
                                clipBehavior: Clip.antiAlias,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: MyAppColors.primaryExtraLightGreenColor, borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                                // child: DigitalClock(
                                //   showSeconds: false,
                                //   isLive: true,
                                //   datetime: DateTime.now(),
                                //   textStyle: TextStyle(fontSize: 80.sp, fontFamily: FontFamily.alumniSansBold.name, color: MyAppColors.primaryBlackColor),
                                // ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: DateFormat('h:mm').format(DateTime.now()).toString(),
                                      textSize: 90.sp,
                                      fontFamily: FontFamily.alumniSansRegular,
                                      color: MyAppColors.primaryBlackColor,
                                      textAlign: TextAlign.center,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.sp),
                                      child: CustomText(
                                        text: DateFormat('a').format(DateTime.now()).toString(),
                                        textSize: 14.sp,
                                        fontFamily: FontFamily.alumniSansRegular,
                                        color: MyAppColors.primaryBlackColor,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                              Container(
                                height: 105.sp,
                                width: 95.sp,
                                margin: EdgeInsets.only(left: 10.w),
                                decoration: BoxDecoration(color: MyAppColors.primaryExtraLightGreenColor, borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                                padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 13.sp),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CustomText(
                                          text: DateFormat('E').format(DateTime.now()).toString(),
                                          textSize: 18.sp,
                                          fontFamily: FontFamily.sfProRegular,
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        CustomText(
                                          text: DateFormat('dd').format(DateTime.now()).toString(),
                                          fontWeight: FontWeight.w700,
                                          textSize: 18.sp,
                                          fontFamily: FontFamily.sfProMedium,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "icons/ic_weather.png",
                                          height: 25.sp,
                                          width: 25.sp,
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        CustomText(
                                          text: "36°c",
                                          textSize: 18.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: FontFamily.sfProMedium,
                                        ),
                                      ],
                                    ),
                                    const Expanded(child: Center()),
                                    CustomText(
                                      text: "Lucknow,",
                                      fontWeight: FontWeight.w700,
                                      textSize: 10.sp,
                                      fontFamily: FontFamily.sfProMedium,
                                    ),
                                    CustomText(
                                      text: "Uttar Pradesh",
                                      textSize: 10.sp,
                                      fontFamily: FontFamily.sfProRegular,
                                    ),
                                  ],
                                ),
                                // child:
                              )
                            ],
                          ),
                        ),

                        /// Workspace || Tracker || Journal || view All sections
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Container(
                                    height: 85.sp,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(color: MyAppColors.primarySkyBlueColor, borderRadius: BorderRadius.circular(10.sp)),
                                    child: CustomText(
                                      text: "Workspace",
                                      textSize: 10.sp,
                                      fontFamily: FontFamily.sfProRegular,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.sp, right: 5.sp),
                                    child: Container(
                                      width: 30.sp,
                                      height: 15.sp,
                                      decoration: BoxDecoration(color: MyAppColors.primaryLightThemeColor, borderRadius: BorderRadius.circular(7.sp)),
                                      alignment: Alignment.center,
                                      child: CustomText(
                                        text: "Soon",
                                        fontWeight: FontWeight.w700,
                                        textSize: 8.sp,
                                        color: MyAppColors.primaryYellowColor,
                                        fontFamily: FontFamily.sfProRegular,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                  child: Container(
                                height: 85.sp,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: MyAppColors.primaryLightGreenColor, borderRadius: BorderRadius.circular(10.sp)),
                                child: CustomText(
                                  text: "Trackers",
                                  textSize: 10.sp,
                                  fontFamily: FontFamily.sfProRegular,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                  child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Container(
                                    height: 85.sp,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(color: MyAppColors.primaryGreenColor, borderRadius: BorderRadius.circular(10.sp)),
                                    child: CustomText(
                                      text: "Journal",
                                      textSize: 10.sp,
                                      fontFamily: FontFamily.sfProRegular,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.sp, right: 5.sp),
                                    child: Container(
                                      width: 30.sp,
                                      height: 15.sp,
                                      decoration: BoxDecoration(color: MyAppColors.primaryLightThemeColor, borderRadius: BorderRadius.circular(7.sp)),
                                      alignment: Alignment.center,
                                      child: CustomText(
                                        text: "New",
                                        fontWeight: FontWeight.w700,
                                        textSize: 8.sp,
                                        color: MyAppColors.primaryYellowColor,
                                        fontFamily: FontFamily.sfProRegular,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                  child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Container(
                                    height: 85.sp,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(color: MyAppColors.primaryLightBlueColor, borderRadius: BorderRadius.circular(10.sp)),
                                    child: CustomText(
                                      text: "View All",
                                      textSize: 10.sp,
                                      fontFamily: FontFamily.sfProRegular,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(top: 5.sp, right: 5.sp),
                                      child: Image.asset(
                                        "icons/ic_rightUpArrow.png",
                                        height: 20.sp,
                                        width: 20.sp,
                                      ))
                                ],
                              ))
                            ],
                          ),
                        ),

                        /// Selection list section
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, top: 20.h, bottom: 20.h),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 50.w),
                                  child: Row(
                                    children: controller.dataItemList.value
                                        .mapIndexed((index, item) => Padding(
                                              padding: EdgeInsets.only(right: 5.w),
                                              child: GestureDetector(
                                                onTap: () {
                                                  controller.dataItemList.value.forEach((element) {
                                                    element.isSelected = false;
                                                  });
                                                  item.isSelected = true;
                                                  controller.dataItemList.refresh();
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 22.sp),
                                                  decoration: BoxDecoration(color: item.isSelected ?? false ? MyAppColors.primaryDarkGreyColor : MyAppColors.primaryLightBlackColor, borderRadius: BorderRadius.circular(30.sp)),
                                                  child: CustomText(
                                                    text: item.title ?? '',
                                                    textSize: 12.sp,
                                                    fontWeight: item.isSelected ?? false ? FontWeight.w700 : FontWeight.w400,
                                                    fontFamily: FontFamily.sfProRegular,
                                                    color: item.isSelected ?? false ? MyAppColors.primaryWhiteColor : const Color(0xFF96999E),
                                                  ),
                                                ),
                                              ),
                                            ))
                                        .toList(),
                                  ),
                                ),
                              ),
                              Container(
                                width: 50.w,
                                height: 40.sp,
                                padding: EdgeInsets.all(3.sp),
                                decoration: ShapeDecoration(
                                  color: MyAppColors.primaryLightThemeColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.sp),
                                      bottomLeft: Radius.circular(20.sp),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(color: MyAppColors.primaryDarkGreyColor, shape: BoxShape.circle),
                                  padding: EdgeInsets.all(7.sp),
                                  child: Image.asset("icons/ic_plus.png"),
                                ),
                              )
                            ],
                          ),
                        ),

                        /// Data view section based on selection of list index
                        if (controller.dataItemList.firstWhereOrNull((element) => element.isSelected ?? false)?.title == "Timebox")
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Column(
                              children: controller.timeBoxDataList
                                  .mapIndexed((index, item) => Padding(
                                        padding: EdgeInsets.only(bottom: 10.h),
                                        child: Container(
                                          height: 220.h,
                                          width: double.infinity,
                                          padding: EdgeInsets.all(12.sp),
                                          decoration: BoxDecoration(color: item.cardBGColor, borderRadius: BorderRadius.circular(10.sp)),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(item.icon ?? '', width: 48.sp, height: 48.sp),
                                                  SizedBox(width: 5.w),
                                                  Expanded(
                                                      child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      CustomText(
                                                        text: "Routine",
                                                        fontWeight: FontWeight.w700,
                                                        textSize: 16.sp,
                                                        fontFamily: FontFamily.sfProRegular,
                                                      ),
                                                      Row(
                                                        children: [
                                                          CustomText(
                                                            text: "${item.weekDaysList} | ${item.time}",
                                                            fontWeight: FontWeight.w700,
                                                            textSize: 12.sp,
                                                            fontFamily: FontFamily.sfProRegular,
                                                            color: const Color(0xFF484848),
                                                          ),
                                                          SizedBox(width: 4.w),
                                                          Image.asset("icons/ic_refresh.png", height: 18.sp, width: 18.sp)
                                                        ],
                                                      )
                                                    ],
                                                  )),
                                                  SizedBox(width: 5.w),
                                                  Container(
                                                    width: 36.sp,
                                                    height: 36.sp,
                                                    padding: EdgeInsets.all(12.sp),
                                                    decoration: BoxDecoration(border: Border.all(color: MyAppColors.primaryLightThemeColor), shape: BoxShape.circle),
                                                    child: Image.asset(
                                                      "icons/ic_tick.png",
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10.sp),
                                              Expanded(
                                                  child: Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    CustomText(
                                                      text: item.title ?? '',
                                                      fontWeight: FontWeight.w600,
                                                      textSize: 16.sp,
                                                      fontFamily: FontFamily.sfProRegular,
                                                    ),
                                                    SizedBox(height: 5.sp),
                                                    CustomText(
                                                      text: item.subTitle ?? '',
                                                      fontWeight: FontWeight.w400,
                                                      textSize: 14.sp,
                                                      color: const Color(0xFF484848),
                                                      fontFamily: FontFamily.sfProRegular,
                                                      maxLine: 3,
                                                      textOverflow: TextOverflow.ellipsis,
                                                    ),
                                                    SizedBox(height: 10.sp),
                                                    Row(
                                                      children: [
                                                        CustomText(
                                                          text: item.status ?? '',
                                                          fontWeight: FontWeight.w900,
                                                          textSize: 10.sp,
                                                          color: MyAppColors.primaryRedColor,
                                                          fontFamily: FontFamily.sfProBold,
                                                        ),
                                                        SizedBox(width: 15.w),
                                                        Expanded(
                                                          child: CustomText(
                                                            text: item.overDueTime ?? '',
                                                            fontWeight: FontWeight.w900,
                                                            textSize: 10.sp,
                                                            color: MyAppColors.primaryRedColor,
                                                            fontFamily: FontFamily.sfProBold,
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Stack(
                                                              children: [
                                                                const SizedBox.shrink(),
                                                                if (item.participant?.isNotEmpty ?? false)
                                                                  ...List<Widget>.generate(min(item.participant?.length ?? 0, 4), (index) {
                                                                    if (index < (((item.participant?.length ?? 0) <= 4) ? item.participant?.length ?? 0 : ((min(item.participant?.length ?? 0, 4) - 1)))) {
                                                                      return Padding(
                                                                        padding: EdgeInsets.only(left: index * 15.w),
                                                                        child: Image.asset(item.participant?[index] ?? '', height: 22.sp, width: 22.sp),
                                                                      );
                                                                    } else if ((item.participant?.length ?? 0) > min((item.participant?.length ?? 0), 4)) {
                                                                      return Padding(
                                                                        padding: EdgeInsets.only(left: index * 15.w),
                                                                        child: Container(
                                                                          height: 22.sp,
                                                                          width: 22.sp,
                                                                          alignment: Alignment.center,
                                                                          decoration: BoxDecoration(color: MyAppColors.primaryWhiteColor, border: Border.all(color: MyAppColors.primaryBlackColor, width: 0.5), shape: BoxShape.circle),
                                                                          child: CustomText(
                                                                            text: "+4",
                                                                            textSize: 10.sp,
                                                                            fontFamily: FontFamily.sfProSemiBold,
                                                                            fontWeight: FontWeight.w700,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    return Container();
                                                                  }),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )),
                                            ],
                                          ),
                                        ),
                                      ))
                                  .toList(),
                            ),
                          )
                        else
                          Padding(padding: EdgeInsets.symmetric(horizontal: 16.w), child: SizedBox(height: 250.h, child: comingSoonView())),
                      ],
                    ),
                  ))
                ],
              );
            }),
      ),
    );
  }
}
