import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../corefile/constaints/commonVar.dart';
import '../../../../corefile/constaints/widgets.dart';
import '../../DetailScreen/DetailScreen.dart';

class SixMonthScreen extends StatelessWidget {
  SixMonthScreen({Key? key}) : super(key: key);

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
                CommonContainer(title: '6 Months'),
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
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (ctx) {
                      //   return DetailScreen();
                      // }));
                    },
                    text: 'Search'),
                fixheight10,
                Divider(height: 5.h, color: themeColor.primary),
                fixheight10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 5,
                        child: ButtonTwo(
                            onPressed: () {}, text: 'Not Avaliable ')),
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        height: 250.h,
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ButtonTwo(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (ctx) {
                                          return DetailScreen();
                                        }));
                                      },
                                      text: 'SNS560001'),
                                  fixheight10,
                                ],
                              );
                            }),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
