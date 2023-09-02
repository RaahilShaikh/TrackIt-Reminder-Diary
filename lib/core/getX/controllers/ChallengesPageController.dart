import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahil_shaikh/core/core.dart';

class ChallengesPageController extends GetxController{

  RxList<TypesOfDataItem> dataItemList = RxList<TypesOfDataItem>([
    TypesOfDataItem(title: "CARDS", icons: "icons/ic_creditcard.png", isSelected: true),
    TypesOfDataItem(title: "BANK", icons: "icons/ic_bank.png", isSelected: false),
    TypesOfDataItem(title: "ID’S", icons: "icons/ic_id.png", isSelected: false),
    TypesOfDataItem(title: "BUSINESS", icons: "icons/ic_business.png", isSelected: false),
    TypesOfDataItem(title: "PASSWORDS", icons: "icons/ic_key.png", isSelected: false),
  ]);

  RxList<ChallengesDataBasedOnSelectionOfItem> cardDataList = RxList<ChallengesDataBasedOnSelectionOfItem>([
    ChallengesDataBasedOnSelectionOfItem(title: "My Profile", cardIcon: "icons/ic_profile.png", cardBGColor:  const Color(0xff5E5BDB)),
    ChallengesDataBasedOnSelectionOfItem(title: "Sbi Debit Card", cardIcon: "icons/ic_discoverCard.png", cardBGColor:  const Color(0xffFF1681)),
    ChallengesDataBasedOnSelectionOfItem(title: "HDFC", cardIcon: "icons/ic_visaCard.png", cardBGColor:  const Color(0xffFFBB50)),
    ChallengesDataBasedOnSelectionOfItem(title: "KOTAK", cardIcon: "icons/ic_rupayCard.png", cardBGColor:  const Color(0xff311B92)),
    ChallengesDataBasedOnSelectionOfItem(title: "UNI", cardIcon: "icons/ic_americanExpressCard.png", cardBGColor:  const Color(0xff6200EA)),
    ChallengesDataBasedOnSelectionOfItem(title: "ONE CARD", cardIcon: "icons/ic_oneCard.png", cardBGColor:  const Color(0xffF92752)),
    ChallengesDataBasedOnSelectionOfItem(title: "Sbi Debit Card", cardIcon: "icons/ic_discoverCard.png", cardBGColor:  const Color(0xffFF1681)),
    ChallengesDataBasedOnSelectionOfItem(title: "HDFC", cardIcon: "icons/ic_visaCard.png", cardBGColor:  const Color(0xffFFBB50)),
    ChallengesDataBasedOnSelectionOfItem(title: "KOTAK", cardIcon: "icons/ic_rupayCard.png", cardBGColor:  const Color(0xff311B92)),
    ChallengesDataBasedOnSelectionOfItem(title: "UNI", cardIcon: "icons/ic_americanExpressCard.png", cardBGColor:  const Color(0xff6200EA)),
    ChallengesDataBasedOnSelectionOfItem(title: "ONE CARD", cardIcon: "icons/ic_oneCard.png", cardBGColor:  const Color(0xffF92752)),
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