import 'package:flutter/material.dart';
import 'Monthly_Fee_Screen/MonthlyFee.dart';
import 'Number_Of_ Client_Screen/NOC.dart';
import 'Period_Bonus_Screen/PeriodBonus.dart';
import 'Points_Of_Sales_Screen/POS.dart';
import 'Weekly_Visits_Screen/WeeklyVisits.dart';

class DetailModel {
  String? firstText;
  String? secondText;
  Widget? widgetData;
  DetailModel({
    this.firstText,
    this.secondText,
    this.widgetData,
  });
}

List<DetailModel> allData = [
  DetailModel(
    firstText: 'Period Bonus',
    secondText: '1,500 SR',
    widgetData: PeriodBonusScreen(),
  ),
  DetailModel(
      firstText: "Monthly Fee",
      secondText: '3,300 SR',
      widgetData: MonthlyFeeScreen()),
  DetailModel(
      firstText: "Weekly Visits",
      secondText: '55 Calls',
      widgetData: WeeklyVisitsScreen()),
  DetailModel(
      firstText: "Number of POS",
      secondText: '5 POS',
      widgetData: POS_Screen()),
  DetailModel(
      firstText: "Number of Client", secondText: '4', widgetData: NOC_Screen()),
];

class HomeModel {
  String? firstText;
  String? secondText;
  Widget? widgetData;
  HomeModel({
    this.firstText,
    this.secondText,
    this.widgetData,
  });
}

List<HomeModel> homedmodel = [
  HomeModel(
    firstText: 'Period Bonus',
    secondText: '1,500 SR',
    widgetData: PeriodBonusScreen(),
  ),
  HomeModel(
      firstText: "Monthly Fee",
      secondText: '3,300 SR',
      widgetData: MonthlyFeeScreen()),
  HomeModel(
      firstText: "Weekly Visits",
      secondText: '55 Calls',
      widgetData: WeeklyVisitsScreen()),
  HomeModel(
      firstText: "Number of POS",
      secondText: '5 POS',
      widgetData: POS_Screen()),
  HomeModel(
      firstText: "Number of Client", secondText: '4', widgetData: NOC_Screen()),
  HomeModel(firstText: "Rewards", secondText: '20', widgetData: NOC_Screen()),
  HomeModel(
      firstText: "Violations", secondText: '10', widgetData: NOC_Screen()),
  HomeModel(
      firstText: "Payment History", secondText: '2', widgetData: NOC_Screen()),
];
