import 'package:blue_eye/corefile/constaints/Common_ins.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import '../../../../corefile/constaints/commonVar.dart';
import '../../../../corefile/constaints/widgets.dart';
import '../SignUpProvider.dart';

class UserDetail extends StatefulWidget {
  UserDetail({Key? key}) : super(key: key);

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    final logPro = Provider.of<SignUpProvider>(context);
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
                Custom_Textfield(
                  hintText: 'Enter phone number',
                  controller: logPro.numberController,
                  keybordtype: TextInputType.emailAddress,
                  name: 'Enter phone number',
                ),
                fixheight15,
                Custom_Textfield(
                  hintText: 'Confirm phone number',
                  controller: logPro.confirmPhoneController,
                  keybordtype: TextInputType.emailAddress,
                  name: 'Confirm phone number',
                ),
                fixheight15,
                Text(
                  'Nationality',
                  style: fonts.text18notBool.copyWith(fontSize: 15.sp),
                ),
                fixheight5,
                Container(
                  decoration: BoxDecoration(
                    color: themeColor.onPrimary,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    isExpanded: true,
                    hint: Text(
                      'Nationality',
                      style: fonts.text18notBool.copyWith(fontSize: 15.sp),
                    ),
                    items: logPro.nationItems
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select Nationality.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      //Do something when changing the item if you want.
                    },
                    onSaved: (value) {
                      logPro.selectedValue = value.toString();
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 60.h,
                      padding: EdgeInsets.only(left: 20.w, right: 10.w),
                    ),
                    iconStyleData: IconStyleData(
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.black45,
                      ),
                      iconSize: 30.sp,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                  ),
                ),
                fixheight15,
                Text(
                  'City',
                  style: fonts.text18notBool.copyWith(fontSize: 15.sp),
                ),
                fixheight5,
                Container(
                  decoration: BoxDecoration(
                    color: themeColor.onPrimary,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    isExpanded: true,
                    hint: Text(
                      'City',
                      style: fonts.text18notBool.copyWith(fontSize: 15.sp),
                    ),
                    items: logPro.cityItems
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select Nationality.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      //Do something when changing the item if you want.
                    },
                    onSaved: (value) {
                      logPro.selectedValue = value.toString();
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 60.h,
                      padding: EdgeInsets.only(left: 20.w, right: 10.w),
                    ),
                    iconStyleData: IconStyleData(
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.black45,
                      ),
                      iconSize: 30.sp,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                  ),
                ),
                fixheight20,
                fixheight20,
                fixheight10,
                CommonButton(
                    onPressed: () {
                      Get.defaultDialog(
                          backgroundColor: themeColor.primary,
                          title: '',
                          content: SizedBox(
                            height: 130.h,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Text(
                                  'Your id is being verified '
                                  'We will let you know '
                                  'when your id is'
                                  'verified.',
                                  textAlign: TextAlign.center,
                                  style: fonts.text18notBool
                                      .copyWith(color: Colors.white),
                                )
                              ],
                            ),
                          ));
                    },
                    text: 'Next'),
              ],
            ),
          ),
        )));
  }
}
