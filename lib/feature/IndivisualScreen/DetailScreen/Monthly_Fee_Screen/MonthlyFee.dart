import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../corefile/constaints/commonVar.dart';
import '../../../../corefile/constaints/widgets.dart';
import 'Common_Container.dart';

class MonthlyFeeScreen extends StatelessWidget {
  MonthlyFeeScreen({Key? key}) : super(key: key);

  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return Scaffold(
        backgroundColor: themeColor.tertiary,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customSize(height: 5.h),
                  Padding(
                    padding: EdgeInsets.all(18.sp),
                    child: Column(
                      children: [
                        const CommonArrow(),
                        fixheight10,
                        CommonContainer(title: 'Monthly Fee'),
                        fixheight20,
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.sp),
                    child: Column(
                      children: [
                        Container(
                          height: 510.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.circular(10.sp)
                          ),
                          child: Table(
                            // defaultColumnWidth: FixedColumnWidth(120.0),
                            //  border: TableBorder.all(
                            //      borderRadius: BorderRadius.circular(10.sp)
                            //     // color: Colors.black, style: BorderStyle.solid, width: 2
                            //  ),
                            children: [
                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 5.h),
                                  child: ComContainer(title: 'Cus name',),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w,top: 5.h),
                                  child: ComContainer(title: 'SR/ Visits',),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w,top: 5.h),
                                  child: ComContainer(title: 'Monthly visits',),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w,top: 5.h),
                                  child: ComContainer(title: 'Total Sr',),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,right: 5.w),
                                  child: ContainerBottom(title: 'Jhon Doe'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '68'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '80'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '7767'),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,right: 5.w),
                                  child: ContainerBottom(title: 'Baja'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '85'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '79'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '4654'),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,right: 5.w),
                                  child: ContainerBottom(title: 'name'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '43'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '78'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '4346'),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,right: 5.w),
                                  child: ContainerBottom(title: 'ali'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '87'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '55'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '7676'),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,right: 5.w),
                                  child: ContainerBottom(title: 'khan'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '83'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '92'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '3216'),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,right: 5.w),
                                  child: ContainerBottom(title: 'fahad'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '26'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '76'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '9578'),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,right: 5.w),
                                  child: ContainerBottom(title: 'ali'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '66'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '87'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '4677'),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,right: 5.w),
                                  child: ContainerBottom(title: 'adam'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '96'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '87'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '8766'),
                                ),
                              ]),

                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w,right: 5.w),
                                  child: ContainerBottom(title: 'atiq'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '96'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '78'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.w),
                                  child: ContainerBottom(title: '9866'),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
