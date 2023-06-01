import 'package:blue_eye/corefile/constaints/Common_ins.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../corefile/constaints/commonVar.dart';
import '../../../corefile/constaints/widgets.dart';
import '1YearScreen/1YearScreen.dart';
import '3MonthScreeen/3MonthScreen.dart';
import '6MonthScreen/6MonthScreen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return Scaffold(
        backgroundColor: themeColor.tertiary,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(18.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customSize(height: 5.h),
                    CommonRow(title: 'Orders'),
                    fixheight20,
                    Text('Please review each option carefully. Keep in mind that '
                        'longer contracts may offer more '
                        'significant discounts but require a '
                        'longer commitment.',
                        textAlign: TextAlign.center,
                        style: fonts.text18notBool),
                    fixheight20,
                    CommonButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return ThreeMonthScreen();
                          }));
                        },
                        text: '3 Months'),
                    fixheight20,
                    CommonButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return SixMonthScreen();
                          }));
                        },
                        text: '6 Months'),
                    fixheight20,
                    CommonButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return OneYearScreen();
                          }));
                        },
                        text: '1 year'),
                  ],
                ),
              ),
            )));
  }
}
