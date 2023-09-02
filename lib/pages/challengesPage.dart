import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rahil_shaikh/core/core.dart';

class ChallengesPageUI extends StatelessWidget {
  const ChallengesPageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customScaffold(
        body: SafeArea(
      top: true,
      child: GetX<ChallengesPageController>(
          init: ChallengesPageController(),
          builder: (controller) {
            return Column(
              children: [
                /// Top section (App bar view)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 16.w),
                  child: Row(children: [
                    Image.asset("icons/ic_wallet.png", height: 30.sp, width: 30.sp),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: CustomText(
                        text: "MY POCKET",
                        textSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: MyAppColors.primaryWhiteColor,
                        fontFamily: FontFamily.oswaldBold,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      width: 38.sp,
                      height: 38.sp,
                      padding: EdgeInsets.all(7.sp),
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.37.sp, -0.93.sp),
                          end: Alignment(-0.37.sp, 0.93.sp),
                          colors: const [Color(0xFF2A2830), Color(0xFF1B1920)],
                        ),
                        shape: OvalBorder(
                          side: BorderSide(width: 0.50.sp, color: const Color(0x19ECECEC)),
                        ),
                        shadows: [
                          BoxShadow(
                            color: const Color(0x4D000000),
                            blurRadius: 12.sp,
                            offset: Offset(4.sp, 4.sp),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: const Color(0x33798697),
                            blurRadius: 12.sp,
                            offset: Offset(-4.sp, -4.sp),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Image.asset("icons/ic_plus.png"),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      width: 38.sp,
                      height: 38.sp,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.37.sp, -0.93.sp),
                          end: Alignment(-0.37.sp, 0.93.sp),
                          colors: const [Color(0xFF2A2830), Color(0xFF1B1920)],
                        ),
                        shape: OvalBorder(
                          side: BorderSide(width: 0.50.sp, color: const Color(0x19ECECEC)),
                        ),
                        shadows: [
                          BoxShadow(
                            color: const Color(0x4D000000),
                            blurRadius: 12.sp,
                            offset: Offset(4.sp, 4.sp),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: const Color(0x33798697),
                            blurRadius: 12.sp,
                            offset: Offset(-4.sp, -4.sp),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Image.asset("icons/ic_menuBold.png"),
                    )
                  ]),
                ),

                /// Item selection view
                Container(
                  height: 50.h,
                  decoration: const BoxDecoration(color: Color(0xFF1F1D26)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        children: controller.dataItemList
                            .mapIndexed((index, item) => Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        controller.dataItemList.value.forEach((element) {
                                          element.isSelected = false;
                                        });
                                        item.isSelected = true;
                                        controller.dataItemList.refresh();
                                      },
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              item.icons ?? '',
                                              height: 20.sp,
                                              width: 20.sp,
                                              color: item.isSelected ?? false ? null : const Color(0xFF96999E),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            CustomText(
                                              text: item.title ?? '',
                                              textSize: 12.sp,
                                              fontWeight: item.isSelected ?? false ? FontWeight.w700 : FontWeight.w400,
                                              fontFamily: FontFamily.robotoMedium,
                                              color: item.isSelected ?? false ? MyAppColors.primaryWhiteColor : const Color(0xFF96999E),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (index + 1 != controller.dataItemList.length) ...[
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10.sp),
                                        child: Container(
                                          height: 12.sp,
                                          width: 1.5.sp,
                                          color: MyAppColors.primaryExtraDarkGreyColor,
                                        ),
                                      )
                                    ]
                                  ],
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),

                /// Data view section based on selection of list index
                if (controller.dataItemList.firstWhereOrNull((element) => element.isSelected ?? false)?.title == "CARDS")
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Stack(
                          children: controller.cardDataList
                              .mapIndexed((index, item) => Padding(
                                padding: EdgeInsets.only(top: index * 70.sp),
                                child: SizedBox(
                                    height: 220.h,
                                    width: double.infinity,
                                    child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Image.asset(
                                                "images/img_card.png",
                                                fit: BoxFit.fill,
                                                color: item.cardBGColor,
                                                width: double.infinity,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 4.sp,
                                                      width: 30.sp,
                                                      decoration: BoxDecoration(color: item.cardBGColor, borderRadius: BorderRadius.circular(2.sp)),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 20.h),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              CustomText(
                                                                text: item.title ?? '',
                                                                textSize: 12.sp,
                                                                fontFamily: FontFamily.oswaldSemiBold,
                                                                color: MyAppColors.primaryWhiteColor,
                                                              ),
                                                              if (item.title != "My Profile") ...[
                                                                Padding(
                                                                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                                                                  child: Container(
                                                                    height: 10.sp,
                                                                    width: 1.5.sp,
                                                                    decoration: BoxDecoration(color: MyAppColors.primaryWhiteColor.withOpacity(0.7), borderRadius: BorderRadius.circular(1.sp)),
                                                                  ),
                                                                ),
                                                                CustomText(
                                                                  text: 'CREDIT',
                                                                  textSize: 12.sp,
                                                                  fontFamily: FontFamily.oswaldSemiBold,
                                                                  color: MyAppColors.primaryWhiteColor,
                                                                ),
                                                              ],
                                                            ],
                                                          ),
                                                          if (item.title == "My Profile")
                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize: MainAxisSize.min,
                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                  children: [
                                                                    CustomText(text: "Welcome", textSize: 10.sp, fontFamily: FontFamily.robotoRegular, fontWeight: FontWeight.w300, color: MyAppColors.primaryWhiteColor),
                                                                    CustomText(
                                                                      text: "Dedo Ray",
                                                                      textSize: 14.sp,
                                                                      fontFamily: FontFamily.robotoBold,
                                                                      fontWeight: FontWeight.w700,
                                                                      color: MyAppColors.primaryWhiteColor,
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  width: 5.w,
                                                                ),
                                                                Image.asset(
                                                                  item.cardIcon ?? '',
                                                                  height: 40.sp,
                                                                  width: 40.sp,
                                                                )
                                                              ],
                                                            )
                                                          else if (item.title == "ONE CARD")
                                                            Image.asset(
                                                              item.cardIcon ?? '',
                                                              height: 18.sp,
                                                              width: 40.sp,
                                                            )
                                                          else
                                                            Image.asset(
                                                              item.cardIcon ?? '',
                                                              height: 17.h,
                                                              width: 70.w,
                                                            )
                                                        ],
                                                      ),
                                                    ),
                                                    if (index + 1 == controller.cardDataList.length) ...[
                                                      const Expanded(child: Center()),
                                                      Container(
                                                          width: double.infinity,
                                                          padding: EdgeInsets.only(bottom: 10.sp),
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              CustomText(text: "XXXX-XXXX-XXXX-1234", textSize: 15.sp, fontFamily: FontFamily.oswaldSemiBold, color: MyAppColors.primaryLightGreenColor),
                                                              CustomText(text: "Rahil Shaikh", textSize: 22.sp, fontFamily: FontFamily.oswaldSemiBold, fontWeight: FontWeight.w700, color: MyAppColors.primaryWhiteColor),
                                                            ],
                                                          )),
                                                    ]
                                                  ],
                                                ),
                                              )
                                            ],
                                          )),
                              ))
                              .toList(),
                        ),
                      ),
                    ),
                  )
                else
                  Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 16.w), child: SizedBox(height: 250.h, child: comingSoonView()))),
              ],
            );
          }),
    ));
  }
}
