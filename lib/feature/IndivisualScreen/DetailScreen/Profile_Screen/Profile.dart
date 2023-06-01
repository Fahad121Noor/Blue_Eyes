import 'package:blue_eye/corefile/constaints/Common_ins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../corefile/constaints/commonVar.dart';
import '../../../../corefile/constaints/image.dart';
import '../../../../corefile/constaints/widgets.dart';
import 'CommonRow.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    Images imagepath = Images();
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
                    CommonRow(
                      title: 'Profile',),
                    fixheight20,
                    ClipOval(
                      child: Container(
                        height: 80.h,
                          width: 80.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(imagepath.image1
                                  )))),
                    ),
                    fixheight10,
                    Text('User Name',style: fonts.text18),
                    fixheight20,
                    Container(
                      height: 250.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: themeColor.onPrimary,
                        borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ComRow(title: 'Age', title2: '38 years old'),
                            const Divider(),
                            ComRow(title: 'Gender', title2: 'Male'),
                            const Divider(),
                            ComRow(title: 'Country', title2: 'Saudi Arabia'),
                            const Divider(),
                            ComRow(title: 'City', title2: 'Riyadh'),
                            const Divider(),
                            ComRow(title: 'Phone number', title2: '+963584652789'),
                            const Divider(),
                            ComRow(title: 'Title', title2: 'Senior Merchandiser'),
                          ],
                        ),
                      ),
                    ),
                    fixheight20,
                    Container(
                      height: 200.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: themeColor.onPrimary,
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ComRow(title: 'Contract Started date', title2: '24.10.2022'),
                            const Divider(),
                            ComRow(title: 'Contract Ended date', title2: '24.06.2023'),
                            const Divider(),
                            ComRow(title: 'Account balance', title2: '500 AED'),
                            const Divider(),
                            ComRow(title: 'No of violation', title2: '0'),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                    fixheight20,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: themeColor.primary,
                          minimumSize: Size(180.w, 40.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                      onPressed: () {},
                      child: Text(
                        'Log Out',
                        style: fonts.text18notBool.copyWith(color: themeColor.onPrimary),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
