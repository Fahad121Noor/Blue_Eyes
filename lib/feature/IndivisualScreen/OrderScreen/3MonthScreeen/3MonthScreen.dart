import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../corefile/constaints/commonVar.dart';
import '../../../../corefile/constaints/widgets.dart';
import '../../DetailScreen/DetailScreen.dart';

class ThreeMonthScreen extends StatelessWidget {
  ThreeMonthScreen({Key? key}) : super(key: key);

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
                    CommonContainer(title: '3 Months'),
                    fixheight20,
                    Custom_Textfield(
                      hintText: 'Country',
                      controller: countryController,
                      keybordtype: TextInputType.emailAddress,
                      name: 'Country',
                    ),
                    fixheight15,
                    Custom_Textfield(
                      hintText: 'City',
                      controller: cityController,
                      keybordtype: TextInputType.emailAddress,
                      name: 'City',
                    ),
                    fixheight20,
                    CommonButton(
                        onPressed: () {

                        },
                        text: 'Next'),
                    fixheight10,
                    Divider(height: 5.h, color: themeColor.primary),
                    fixheight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonTwo(onPressed: () {}, text: 'Not Avaliable '),
                        fixheight10,
                        ButtonTwo(onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return DetailScreen();
                          }));
                        }, text: 'SNS560001'),
                      ],
                    )

                  ],
                ),
              ),
            )));
  }
}
