import 'package:flutter/material.dart';

class TypesOfDataItem {
  String? title;
  String? icons;
  bool? isSelected;

  TypesOfDataItem({this.title, this.icons, this.isSelected});
}

class DataListBasedOnSelectionOfItem {
  String? icon;
  String? weekDaysList;
  String? time;
  String? title;
  String? subTitle;
  Color? cardBGColor;
  String? status;
  String? overDueTime;
  List<String>? participant;

  DataListBasedOnSelectionOfItem({this.icon,this.weekDaysList,this.time,this.title,this.subTitle,this.cardBGColor,this.status,this.overDueTime,this.participant});
}

class ChallengesDataBasedOnSelectionOfItem {
  String? title;
  Color? cardBGColor;
  String? cardIcon;

  ChallengesDataBasedOnSelectionOfItem({this.title,this.cardBGColor,this.cardIcon});
}