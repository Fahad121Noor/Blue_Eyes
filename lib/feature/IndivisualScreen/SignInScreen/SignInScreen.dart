import 'package:blue_eye/corefile/constaints/Common_ins.dart';
import 'package:blue_eye/corefile/constaints/commonVar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../corefile/constaints/widgets.dart';
import '../CheckStatusScreen/CheckStatusInput.dart';
import '../SignUpScreen/SignUpScreen.dart';
import 'SignInProvider.dart';

class SignInScreeen extends StatefulWidget {
  SignInScreeen({super.key});

  @override
  State<SignInScreeen> createState() => _SignInScreeenState();
}

class _SignInScreeenState extends State<SignInScreeen> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    final logPro = Provider.of<SignInProvider>(context);

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
                Text("Blue Eye",
                    style: fonts.text40.copyWith(color: themeColor.primary)),
                fixheight20,
                fixheight20,
                Custom_Textfield(
                  hintText: 'Name',
                  controller: logPro.nameController,
                  keybordtype: TextInputType.emailAddress,
                  name: 'User Name',
                ),
                fixheight15,
                Custom_Textfield(
                  hintText: 'Password',
                  controller: logPro.passwordController,
                  keybordtype: TextInputType.emailAddress,
                  name: 'Password',
                ),
                Row(
                  children: [
                    Text(
                      "Save Password",
                      style: fonts.text18notBool.copyWith(fontSize: 15.sp),
                    ),
                    Checkbox(
                      checkColor: themeColor.onPrimary,
                      activeColor: themeColor.primary,
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue!;
                        });
                      }, //  <-- leading Checkbox
                    ),
                  ],
                ),
                fixheight20,
                CommonButton(
                    onPressed: () {
                     // Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                     //   return HomeScreen();
                     // }));
                    },
                    text: 'Log in'),
                fixheight20,
                fixheight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: themeColor.outline,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    fixwidth5,
                    Text(
                      'or',
                      style: fonts.text18.copyWith(fontSize: 12.sp),
                    ),
                    fixwidth5,
                    Container(
                      height: 1.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: themeColor.outline,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                  ],
                ),
                fixheight20,
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const SignUpScreen();
                    }));
                  },
                  child: Text(
                    'Register',
                    style:
                        fonts.text18notBool.copyWith(color: themeColor.primary),
                  ),
                ),
                fixheight5,
                Container(
                  height: 1.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    color: themeColor.primary,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
                fixheight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return CheckStatusInput();
                          }));
                        },
                        child: Text('Check Status',
                            style:
                                fonts.text18notBool.copyWith(fontSize: 15.sp))),
                    InkWell(
                        onTap: () {},
                        child: Text('Forgot Password?',
                            style:
                                fonts.text18notBool.copyWith(fontSize: 15.sp))),
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}
