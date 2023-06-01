import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

var fullHeight = Get.height;
var fullWidth = Get.width;

SizedBox customSize({double height = 20}) {
  return SizedBox(
    height: height.h,
  );
}

SizedBox fixheight5 = SizedBox(
  height: 5.h,
);
SizedBox fixheight20 = SizedBox(
  height: 20.h,
);
SizedBox fixheight10 = SizedBox(
  height: 10.h,
);
SizedBox fixheight15 = SizedBox(
  height: 15.h,
);
SizedBox fixwidth5 = SizedBox(
  width: 5.w,
);

SizedBox fixwidth10 = SizedBox(
  width: 10.w,
);
SizedBox fixwidth20 = SizedBox(
  width: 20.w,
);

