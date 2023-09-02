import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahil_shaikh/core/core.dart';
import 'package:rahil_shaikh/pages/pages.dart';

class BottomNavigationBarController extends GetxController {
  RxInt navigationIndex = RxInt(0);
  Rx<Widget> currentPage = Rx<Widget>(const HomePageUI());
  RxList<NavigationBarDataModel> navigationBarData = RxList<NavigationBarDataModel>([
    NavigationBarDataModel(key: "home", labelName: "HOME", activeIcon: "icons/ic_home.png", inactiveIcon: "icons/ic_home.png", page: const HomePageUI(), indexNo: 0),
    NavigationBarDataModel(key: "challenge", labelName: "CHALLENGE", activeIcon: "icons/ic_challenges.png", inactiveIcon: "icons/ic_challenges.png", page: const ChallengesPageUI(), indexNo: 1),
    NavigationBarDataModel(key: "pomodoro", labelName: "POMODORO", activeIcon: "icons/ic_alarmPlay.png", inactiveIcon: "icons/ic_alarmPlay.png", page: const PomodoroPageUI(), indexNo: 2),
    NavigationBarDataModel(key: "timeBox", labelName: "TIMEBOX", activeIcon: "icons/ic_calendarAdd.png", inactiveIcon: "icons/ic_calendarAdd.png", page: const TimeBoxPageUI(), indexNo: 3),
    NavigationBarDataModel(key: "account", labelName: "ACCOUNT", activeIcon: "", inactiveIcon: "", page: const AccountPageUI(), indexNo: 4),
  ]);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void changeTab(int index) {
    navigationIndex.value = index;
    currentPage.value = navigationBarData[index].page ?? Container();
  }
}
