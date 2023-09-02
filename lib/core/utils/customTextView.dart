import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rahil_shaikh/core/core.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final TextOverflow? textOverflow;
  final double? textSize;
  final Color? color;
  final FontFamily? fontFamily;
  final TextAlign textAlign;
  final TextDecoration textDecoration;
  final int? maxLine;

  const CustomText(
      {super.key, required this.text, this.fontWeight = FontWeight.w500, this.textSize, this.color, this.fontFamily, this.textOverflow, this.textAlign = TextAlign.start, this.textDecoration = TextDecoration.none, this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false,applyHeightToLastDescent: false,),
      softWrap: false,
      style: TextStyle(
        overflow: textOverflow,
        fontWeight: fontWeight,
        fontSize: textSize ?? 16.sp,
        color: color ?? MyAppColors.primaryBlackColor,
        fontFamily: (fontFamily ?? FontFamily.alumniSansRegular).name,
        decoration: textDecoration,
      ),
      maxLines: maxLine,
    );
  }
}
