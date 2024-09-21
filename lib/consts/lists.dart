import 'package:flutter/material.dart';
import 'package:synctasks/consts/strings.dart';

//Names List
List nameList = [
  generativeAI,
  openAI,
  ibm,
  callForReferral,
  amazonWebServices,
  appinventiv
];

//Images List
List imgList = [img1, img2, img3, img4, img5, img6];

const List transactionNameList = [
  "DEVA HOTEL",
  "MASHA RESTAURANT",
  "UNIVERSE MEDICO",
  "CAFE RESTAURANT",
  "ROHIT WADE WALE",
  "CRAZY CHEESY"
];
const List transactionDateList = [
  "05 Sep 2024",
  "05 Sep 2024",
  "04 Sep 2024",
  "03 Sep 2024",
  "03 Sep 2024",
  "02 Sep 2024"
];
const List transactionAmtList = [
  "₹230",
  "₹150",
  "₹130",
  "₹100",
  "₹80",
  "₹120",
];
var bottomNavbarItemList = const [
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: home,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.currency_rupee_rounded),
    label: loan,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shield_outlined),
    label: insurance,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.show_chart_sharp),
    label: wealth,
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.compare_arrows_sharp),
    label: history,
  ),
];
