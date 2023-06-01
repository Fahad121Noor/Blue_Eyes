import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../corefile/constaints/Common_ins.dart';
import '../../../corefile/constaints/commonVar.dart';
import '../../../corefile/constaints/widgets.dart';
import 'RegistrationScreen/UserDetail.dart';
import 'SignUpProvider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var initialYear = 0;
  DateTime dateTime = DateTime.now();
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customSize(height: 5.h),
                CommonRow(
                  title: 'Blue Eye',
                ),
                fixheight20,
                fixheight20,
                Text('Registration',
                    style: fonts.text18.copyWith(color: themeColor.primary)),
                fixheight20,
                Stack(
                  children: <Widget>[
                    logPro.img != null
                        ? CircleAvatar(
                            radius: 45.r,
                            backgroundImage: FileImage(File(logPro.img!.path)))
                        : CircleAvatar(
                            radius: 45.r,
                            backgroundImage:
                                AssetImage(logPro.imagePath.image1)),
                    Positioned(
                        bottom: 3.h,
                        right: 2.h,
                        child: InkWell(
                          onTap: () async {
                            await logPro.imagepicker();
                          },
                          child: Icon(Icons.camera_alt,
                              color: themeColor.primary, size: 25.sp),
                        )),
                  ],
                ),
                fixheight20,
                Custom_Textfield(
                  hintText: 'First name',
                  controller: logPro.firsNameController,
                  keybordtype: TextInputType.emailAddress,
                  name: 'First name',
                ),
                fixheight15,
                Custom_Textfield(
                  hintText: 'Last name',
                  controller: logPro.lastNameController,
                  keybordtype: TextInputType.emailAddress,
                  name: 'Last name',
                ),
                fixheight15,
                Container(
                  decoration: BoxDecoration(
                    color: themeColor.onPrimary,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        // spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: logPro.dobController,
                    decoration: InputDecoration(
                      hintText: 'DOB',
                      suffixIcon: Icon(
                        Icons.calendar_month,
                        size: 30.sp,
                        color: themeColor.primary,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    readOnly: true,
                    onTap: () async {
                      initialYear =  DateTime.now().year - 18;
                      dateTime = DateTime(initialYear);
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: dateTime,
                        firstDate: DateTime(1900),
                        lastDate: dateTime,
                      );
                      if (pickedDate != null) {
                        String formattedDate =
                        DateFormat('dd MMM yyyy').format(pickedDate);
                        setState(() {
                         logPro.dobController .text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        Fluttertoast.showToast(
                            msg: 'Required all field',
                            timeInSecForIosWeb: 2,
                            backgroundColor: themeColor.outlineVariant,
                            textColor: themeColor.onPrimary,
                            fontSize: 18.sp);
                      }
                    },
                  ),
                ),


                fixheight20,
                fixheight20,
                fixheight10,
                CommonButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return UserDetail();
                      }));
                    },
                    text: 'Next'),
              ],
            ),
          ),
        )));
  }
}
