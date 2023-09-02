import 'package:flutter/material.dart';

class NavigationBarDataModel {
  String? labelName;
  String? key;
  String? activeIcon;
  String? inactiveIcon;
  Widget? page;
  int? indexNo;

  NavigationBarDataModel({this.key, this.labelName, this.activeIcon, this.inactiveIcon, this.page, this.indexNo});
}
