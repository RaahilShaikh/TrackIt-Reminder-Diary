import 'package:get/get.dart';
import 'package:rahil_shaikh/core/core.dart';

class HomePageController extends GetxController {
  RxList<TypesOfDataItem> dataItemList = RxList<TypesOfDataItem>([
    TypesOfDataItem(title: "Feed", isSelected: false),
    TypesOfDataItem(title: "Timebox", isSelected: true),
    TypesOfDataItem(title: "Habits", isSelected: false),
    TypesOfDataItem(title: "Water", isSelected: false),
    TypesOfDataItem(title: "Routine", isSelected: false),
  ]);

  RxList<DataListBasedOnSelectionOfItem> timeBoxDataList = RxList<DataListBasedOnSelectionOfItem>([
    DataListBasedOnSelectionOfItem(
      icon: "icons/ic_card.png",
      title: "Work to do.",
      weekDaysList: "M, T, W, T, F, S, S",
      time: "10:15 PM",
      status: "ONGOING",
      subTitle: "Attended a printmaking workshop at NGMA, a week's work. Loose old sketches in my sketchbook turned into this design.",
      cardBGColor: MyAppColors.primaryExtraLightGreenColor,
      overDueTime: "Overdue 24 HRS : 12 MIN",
      participant: [
        "icons/ic_avtar1.png",
        "icons/ic_avtar2.png",
        "icons/ic_avtar3.png",
        "icons/ic_avtar1.png",
        "icons/ic_avtar2.png",
        "icons/ic_avtar3.png",
      ],
    ),
    DataListBasedOnSelectionOfItem(
      icon: "icons/ic_play.png",
      title: "Today is the big day.",
      weekDaysList: "M, T, W, T, F",
      time: "10:45 PM",
      status: "ONGOING",
      subTitle: "Attended a printmaking workshop at NGMA, a week's work. Loose old sketches in my sketchbook turned into this design.",
      cardBGColor: MyAppColors.primaryGreenColor,
      overDueTime: "Overdue 24 HRS : 12 MIN",
      participant: [
        "icons/ic_avtar1.png",
        "icons/ic_avtar2.png",
        "icons/ic_avtar3.png",
      ],
    )
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
}
