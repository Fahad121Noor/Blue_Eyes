import 'package:blue_eye/corefile/constaints/Common_ins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../corefile/constaints/commonVar.dart';
import '../../../corefile/constaints/widgets.dart';
import '../OrderScreen/OrderScreen.dart';

class CheckStatus extends StatelessWidget {
  CheckStatus({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customSize(height: 5.h),
                CommonRow(title: 'Blue Eye'),
                fixheight20,
                fixheight20,
                Text(
                  'User id',
                  style: fonts.text18notBool,
                ),
                fixheight10,
                Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: themeColor.onPrimary,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        // spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(18.sp),
                    child: Text('03SNOWXI123', style: fonts.text18notBool),
                  ),
                ),
                fixheight15,
                Text(
                  'Nationality',
                  style: fonts.text18notBool,
                ),
                fixheight10,
                Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: themeColor.onPrimary,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        // spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(18.sp),
                    child: Text('KSA', style: fonts.text18notBool),
                  ),
                ),
                fixheight15,
                Text(
                  'City',
                  style: fonts.text18notBool,
                ),
                fixheight10,
                Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: themeColor.onPrimary,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        // spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(18.sp),
                    child: Text('Riyadh', style: fonts.text18notBool),
                  ),
                ),
                fixheight20,
                fixheight10,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: themeColor.primary,
                      minimumSize: Size(180.w, 50.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      )),
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (ctx) {
                    //   return const OrderScreen();
                    // }));
                  },
                  child: Text(
                    'Status',
                    style: fonts.text18.copyWith(color: themeColor.onPrimary),
                  ),
                ),
                fixheight10,
                Divider(height: 5.h, color: themeColor.primary),
                fixheight10,
                ButtonTwo(onPressed: () {}, text: 'Under Process'),
                fixheight10,
                ButtonTwo(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return OrderScreen();
                      }));
                    },
                    text: 'Accepted'),
                fixheight10,
                ButtonTwo(onPressed: () {}, text: 'Rejected'),
              ],
            ),
          ),
        )));
  }
}
