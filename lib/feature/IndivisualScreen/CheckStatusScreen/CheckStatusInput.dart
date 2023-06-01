import 'package:blue_eye/corefile/constaints/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../corefile/constaints/commonVar.dart';
import 'CheckStatus.dart';

class CheckStatusInput extends StatelessWidget {
  CheckStatusInput({super.key});

  TextEditingController checkuserName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(18.sp),
        child: Column(
          children: [
            CommonRow(title: "Blue Eye"),
            fixheight20,
            fixheight20,
            Custom_Textfield(
              hintText: 'User Id',
              controller: checkuserName,
              keybordtype: TextInputType.emailAddress,
              name: 'User Id',
            ),
            fixheight20,
            CommonButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return CheckStatus();
                  }));
                },
                text: "Check Status"),
            fixheight10,
          ],
        ),
      )),
    );
  }
}
