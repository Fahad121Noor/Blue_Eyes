import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../corefile/constaints/commonVar.dart';
import '../../../../corefile/constaints/widgets.dart';
import '../Monthly_Fee_Screen/Common_Container.dart';

class WeeklyVisitsScreen extends StatelessWidget {
  WeeklyVisitsScreen({Key? key}) : super(key: key);

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
                    CommonContainer(title: 'Weekly Visits'),
                    fixheight20,
                    Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ComContainer(title: 'Monday',state: 1,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Table(
                              defaultColumnWidth: const FixedColumnWidth(120.0),
                               border: TableBorder.all(
                                   // borderRadius: BorderRadius.circular(5.sp)
                                   color: themeColor.onPrimary, style: BorderStyle.solid, width: 0
                               ),
                              children: [
                                TableRow(children: [
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Jhon Doe'),
                                  ContainerBottom(title: '68'),
                                  ContainerBottom(title: '80'),
                                  ContainerBottom(title: '7767'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Baja'),
                                  ContainerBottom(title: '85'),
                                  ContainerBottom(title: '79'),
                                  ContainerBottom(title: '4654'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'name'),
                                  ContainerBottom(title: '43'),
                                  ContainerBottom(title: '78'),
                                  ContainerBottom(title: '4346'),
                                ]),
                              ],
                            ),
                          ),
                          fixheight20,
                          ComContainer(title: 'Tuesday',state: 1,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Table(
                              defaultColumnWidth: const FixedColumnWidth(120.0),
                              border: TableBorder.all(
                                // borderRadius: BorderRadius.circular(5.sp)
                                  color: themeColor.onPrimary, style: BorderStyle.solid, width: 0
                              ),
                              children: [
                                TableRow(children: [
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Jhon Doe'),
                                  ContainerBottom(title: '68'),
                                  ContainerBottom(title: '80'),
                                  ContainerBottom(title: '7767'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Baja'),
                                  ContainerBottom(title: '85'),
                                  ContainerBottom(title: '79'),
                                  ContainerBottom(title: '4654'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'name'),
                                  ContainerBottom(title: '43'),
                                  ContainerBottom(title: '78'),
                                  ContainerBottom(title: '4346'),
                                ]),
                              ],
                            ),
                          ),
                          fixheight20,
                          ComContainer(title: 'Wednesday',state: 1,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Table(
                              defaultColumnWidth: const FixedColumnWidth(120.0),
                              border: TableBorder.all(
                                // borderRadius: BorderRadius.circular(5.sp)
                                  color: themeColor.onPrimary, style: BorderStyle.solid, width: 0
                              ),
                              children: [
                                TableRow(children: [
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Jhon Doe'),
                                  ContainerBottom(title: '68'),
                                  ContainerBottom(title: '80'),
                                  ContainerBottom(title: '7767'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Baja'),
                                  ContainerBottom(title: '85'),
                                  ContainerBottom(title: '79'),
                                  ContainerBottom(title: '4654'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'name'),
                                  ContainerBottom(title: '43'),
                                  ContainerBottom(title: '78'),
                                  ContainerBottom(title: '4346'),
                                ]),
                              ],
                            ),
                          ),
                          fixheight20,
                          ComContainer(title: 'Thursday',state: 1,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Table(
                              defaultColumnWidth: const FixedColumnWidth(120.0),
                              border: TableBorder.all(
                                // borderRadius: BorderRadius.circular(5.sp)
                                  color: themeColor.onPrimary, style: BorderStyle.solid, width: 0
                              ),
                              children: [
                                TableRow(children: [
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Jhon Doe'),
                                  ContainerBottom(title: '68'),
                                  ContainerBottom(title: '80'),
                                  ContainerBottom(title: '7767'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Baja'),
                                  ContainerBottom(title: '85'),
                                  ContainerBottom(title: '79'),
                                  ContainerBottom(title: '4654'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'name'),
                                  ContainerBottom(title: '43'),
                                  ContainerBottom(title: '78'),
                                  ContainerBottom(title: '4346'),
                                ]),
                              ],
                            ),
                          ),
                          fixheight20,
                          ComContainer(title: 'Friday',state: 1,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Table(
                              defaultColumnWidth: const FixedColumnWidth(120.0),
                              border: TableBorder.all(
                                // borderRadius: BorderRadius.circular(5.sp)
                                  color: themeColor.onPrimary, style: BorderStyle.solid, width: 0
                              ),
                              children: [
                                TableRow(children: [
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Jhon Doe'),
                                  ContainerBottom(title: '68'),
                                  ContainerBottom(title: '80'),
                                  ContainerBottom(title: '7767'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Baja'),
                                  ContainerBottom(title: '85'),
                                  ContainerBottom(title: '79'),
                                  ContainerBottom(title: '4654'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'name'),
                                  ContainerBottom(title: '43'),
                                  ContainerBottom(title: '78'),
                                  ContainerBottom(title: '4346'),
                                ]),
                              ],
                            ),
                          ),
                          fixheight20,
                          ComContainer(title: 'Saturday',state: 1,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Table(
                              defaultColumnWidth: const FixedColumnWidth(120.0),
                              border: TableBorder.all(
                                // borderRadius: BorderRadius.circular(5.sp)
                                  color: themeColor.onPrimary, style: BorderStyle.solid, width: 0
                              ),
                              children: [
                                TableRow(children: [
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                  ContainerBottom(title: 'Tala Mall'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Jhon Doe'),
                                  ContainerBottom(title: '68'),
                                  ContainerBottom(title: '80'),
                                  ContainerBottom(title: '7767'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'Baja'),
                                  ContainerBottom(title: '85'),
                                  ContainerBottom(title: '79'),
                                  ContainerBottom(title: '4654'),
                                ]),

                                TableRow(children: [
                                  ContainerBottom(title: 'name'),
                                  ContainerBottom(title: '43'),
                                  ContainerBottom(title: '78'),
                                  ContainerBottom(title: '4346'),
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
