import 'package:blue_eye/corefile/constaints/Common_ins.dart';
import 'package:blue_eye/corefile/constaints/commonVar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../corefile/constaints/widgets.dart';
import '../CompanyScreen/DetailScreen/DetailScreen.dart';
import '../IndivisualScreen/SignInScreen/SignInScreen.dart';

class SelectScreen extends StatelessWidget {
  SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;

    return Scaffold(
        backgroundColor: themeColor.tertiary,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(18.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customSize(height: 5.h),
              Text("Blue Eye",
                  style: fonts.text40.copyWith(color: themeColor.primary)),
              fixheight20,
              fixheight20,
              Spacer(),
              CommonButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return SignInScreeen();
                    }));
                    // Get.to(()=> DetailScreen());
                  },
                  text: 'Indivisual'),
              fixheight20,
              CommonButton(
                  onPressed: () {
                     Get.to(()=> CompanyDetailScreen());
                  },
                  text: 'Company'),
              fixheight20,
              Spacer(),
            ],
          ),
        )));
  }
}
