import 'package:blue_eye/corefile/constaints/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Common_ins.dart';
import 'commonVar.dart';
import 'image.dart';

// commo text_field
class Custom_Textfield extends StatelessWidget {
  final TextEditingController controller;
  final prefixicon;
  final suffixIcon;
  final String hintText;
  final String name;
  TextInputType? keybordtype;

  bool hidePassword = true;
  Custom_Textfield(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.name,
      this.suffixIcon,
      this.prefixicon,
      this.textinputformatter,
      this.keybordtype,
      this.valdation})
      : super(key: key);
  List<TextInputFormatter>? textinputformatter;
  String? Function(String? val)? valdation;
  TextFonts fonts = TextFonts();

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: fonts.text18notBool.copyWith(fontSize: 15.sp),
        ),
        fixheight5,
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
          child: TextFormField(
            controller: controller,
            keyboardType: keybordtype ?? TextInputType.name,
            style:  TextStyle(color: themeColor.shadow),
            cursorColor: themeColor.shadow,
            validator: valdation ??
                (vlaue) {
                  if (vlaue == null) {
                    return "enter data";
                  }
                },
            inputFormatters: textinputformatter ?? [],
            decoration: InputDecoration(
             // fillColor: themeColor.onPrimary,
              prefixIcon: prefixicon == null
                  ? null
                  : Icon(
                      prefixicon,
                      color: Colors.black,
                    ),
              suffixIcon: suffixIcon == null
                  ? null
                  : Icon(
                      suffixIcon,
                      color: Colors.black,
                    ),
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.black),
              // contentPadding: const EdgeInsets.symmetric(vertical: 15),
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
          ),
        ),
      ],
    );
  }
}




// meny TextField

class MenyTextField extends StatelessWidget {
  final TextEditingController controller;
  TextInputType? keybordtype;

   MenyTextField({Key? key, required this.controller, this.keybordtype,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 80.w,
      child: TextField(
        controller: controller,
        keyboardType: keybordtype,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}






//// Common Button
class CommonButton extends StatelessWidget {
  String text;
  final  onPressed;
  int?  state;


  CommonButton({Key? key, required this.onPressed,required this.text, this.state = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: state == 0 ? themeColor.primary:themeColor.error,
          minimumSize: Size(double.infinity, 55.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          )
      ),
      onPressed: onPressed,
      child: Text(text,style: fonts.text18.copyWith(
        color: themeColor.onPrimary
      ),),
    );
  }
}

// COMMON BUTTON 2
class ButtonTwo extends StatelessWidget {
  String text;
  final  onPressed;
  ButtonTwo({Key? key, required this.onPressed,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: themeColor.primaryContainer,
          minimumSize: Size(150.w, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          )
      ),
      onPressed: onPressed,
      child: Text(text,style: fonts.text18.copyWith(
          color: themeColor.onPrimary
      ),),
    );
  }
}

// common row
class CommonRow extends StatelessWidget {
   CommonRow({required this.title, Key? key}) : super(key: key);
   String title;
  Images imagePath = Images();
  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 32.h,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: themeColor.primary
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 20.sp,
                color: themeColor.onPrimary,
              ),
            )),
       Text(title,style:fonts.text40.copyWith(color: themeColor.primary)),
        fixwidth10
      ],
    );
  }
}

// common arrow
class CommonArrow extends StatelessWidget {
  const CommonArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            height: 32.h,
            width: 30.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: themeColor.primary
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 20.sp,
              color: themeColor.onPrimary,
            ),
          )),
    );
  }
}

// common Container

class CommonContainer extends StatelessWidget {
  String title;
   CommonContainer({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: themeColor.primary,
        borderRadius: BorderRadius.circular(10.r)
      ),
      child: Center(child: Text(title,
          style:fonts.text18.copyWith(color: themeColor.onPrimary,fontSize: 25.sp)
      )),
    );
  }
}

