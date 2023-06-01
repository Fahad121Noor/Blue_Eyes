import 'package:blue_eye/corefile/constaints/Common_ins.dart';
import 'package:blue_eye/corefile/constaints/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../../../corefile/constaints/commonVar.dart';
import 'DetailProvidet.dart';

class CompanyDetailScreen extends StatefulWidget {
  const CompanyDetailScreen({Key? key}) : super(key: key);

  @override
  State<CompanyDetailScreen> createState() => _CompanyDetailScreenState();
}

class _CompanyDetailScreenState extends State<CompanyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    final data = Provider.of<CompanyDetailProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customSize(height: 5.h),
              CommonRow(title: 'Detail'),
              fixheight15,
               CommonContainer(title: 'Select Country'),
              fixheight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: themeColor.primary,
                        minimumSize: Size(150.w, 50.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        )),
                    onPressed: () {

                    },
                    child: Text(
                      'Request via Chain',
                      style: fonts.text12.copyWith(color: themeColor.onPrimary),
                    ),
                  ),

              ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: themeColor.primary,
                        minimumSize: Size(150.w, 50.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        )),
                    onPressed: () {
                      data.isVesible = false;
                    },
                    child: Text(
                      'Request via City',
                      style: fonts.text12.copyWith(color: themeColor.onPrimary),
                    ),
                  )
                ],
              ),
              fixheight20,
              Expanded(
                child: ListView.builder(
                    itemCount:  data.items.length,
                    itemBuilder: (context, index){
                      dynamic value = data.items[index];
                      return InkWell(
                        onTap: (){
                          Get.defaultDialog(
                              title: '',
                              content: SizedBox(
                                height: 320.h,
                                width: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.w,right: 10.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Panda',style: fonts.text18.copyWith(
                                            fontSize: 15.sp,
                                              color: themeColor.onPrimaryContainer)),
                                          Text('Branches',style: fonts.text18.copyWith(
                                              fontSize: 15.sp,
                                              color: themeColor.onPrimaryContainer)),
                                          Text('Visit/Week',style: fonts.text18.copyWith(
                                              fontSize: 15.sp,
                                              color: themeColor.onPrimaryContainer)),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Class A',style: fonts.text18.copyWith(
                                              fontSize: 15.sp,
                                              color: themeColor.onPrimaryContainer)),
                                          Flexible(
                                              child: MenyTextField(controller: data.a1Controller,
                                                keybordtype: TextInputType.number,
                                              )),
                                          Flexible(
                                              child: MenyTextField(  keybordtype: TextInputType.number,controller: data.a2Controller)),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Class B',style: fonts.text18.copyWith(
                                              fontSize: 15.sp,
                                              color: themeColor.onPrimaryContainer)),
                                          Flexible(
                                              child: MenyTextField(  keybordtype: TextInputType.number,controller: data.b1Controller)),
                                          Flexible(
                                              child: MenyTextField(  keybordtype: TextInputType.number,controller: data.b2Controller)),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Class C',style: fonts.text18.copyWith(
                                              fontSize: 15.sp,
                                              color: themeColor.onPrimaryContainer)),
                                          Flexible(
                                              child: MenyTextField(  keybordtype: TextInputType.number,controller: data.c1Controller)),
                                          Flexible(
                                              child: MenyTextField(  keybordtype: TextInputType.number,controller: data.c2Controller)),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: CommonButton(
                                                onPressed: () {

                                                },
                                                text: 'Reset'),
                                          ),
                                          fixwidth10,
                                          Expanded(
                                            child: CommonButton(
                                                onPressed: () {

                                                },
                                                text: 'Save'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.h),
                        child: Text(value,
                          textAlign: TextAlign.start,
                          style: fonts.text18notBool,),
                        ),
                      );
                    }
                ),
              ),
              fixheight20,
              CommonButton(
                  onPressed: (){},
                  text: 'Send Request')
            ],
          ),
        ),
      ),
    );
  }
}
