import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../corefile/constaints/commonVar.dart';
import '../../../../corefile/constaints/widgets.dart';


class NOC_Screen extends StatelessWidget {
  NOC_Screen({Key? key}) : super(key: key);

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
                    CommonContainer(title: 'Number of POS')
                  ],
                ),
              ),
            )));
  }
}
