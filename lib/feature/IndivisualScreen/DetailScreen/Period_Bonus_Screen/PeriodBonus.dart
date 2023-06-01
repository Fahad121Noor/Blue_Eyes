import 'package:blue_eye/corefile/constaints/Common_ins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../corefile/constaints/commonVar.dart';
import '../../../../corefile/constaints/widgets.dart';


class PeriodBonusScreen extends StatelessWidget {
  PeriodBonusScreen({Key? key}) : super(key: key);

  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();

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
                    const CommonArrow(),
                    fixheight10,
                    CommonContainer(title: 'Period Bonus'),
                    fixheight20,
                    fixheight20,
                    Container(
                      height: 180.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: themeColor.primaryContainer,
                        borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Center(
                        child: Text('You are eligible to have Period Bonus '
                            'after you finish the period '
                            'without any complain',
                        textAlign: TextAlign.center,
                          style: fonts.text18notBool.copyWith(color: themeColor.onPrimary),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
