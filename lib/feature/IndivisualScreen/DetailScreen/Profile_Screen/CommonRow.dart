import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../corefile/constaints/Common_ins.dart';

class ComRow extends StatelessWidget {
  String title;
  String title2;
  ComRow({Key? key, required this.title , required this.title2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: fonts.text18notBool.copyWith(fontSize: 15.sp)),
        Text(title2,style: fonts.text18notBool.
        copyWith(color: themeColor.outline,fontSize: 15.sp)),
      ],
    );
  }
}
