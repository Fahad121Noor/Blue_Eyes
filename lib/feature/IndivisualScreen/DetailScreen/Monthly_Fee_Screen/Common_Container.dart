import 'package:blue_eye/corefile/constaints/Common_ins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComContainer extends StatelessWidget {
  String title;
  int ?state;
   ComContainer({Key? key, required this.title,this.state = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return  Container(
      height:state == 0? 50.h:35.h,
      width:state == 0? double.infinity: 100.w,
      decoration: BoxDecoration(
          color:themeColor.primary,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5.sp),
              topLeft: Radius.circular(5.sp))
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: fonts.text12,
        ),
      ),
    );
  }
}


class ContainerBottom extends StatelessWidget {
  String title;
  ContainerBottom({Key? key, required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return  Container(
      height: 50.h,
      width:double.infinity,
      decoration: BoxDecoration(
          color:themeColor.primaryContainer,
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: fonts.text12,
        ),
      ),
    );
  }
}
