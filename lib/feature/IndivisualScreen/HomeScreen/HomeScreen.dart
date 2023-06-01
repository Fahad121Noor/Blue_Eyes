import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../corefile/constaints/Common_ins.dart';
import '../../../corefile/constaints/commonVar.dart';
import '../../../corefile/constaints/image.dart';
import '../../../corefile/constaints/widgets.dart';
import '../DetailScreen/Detail_Model.dart';
import '../DetailScreen/Profile_Screen/Profile.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<HomeModel> modelList = homedmodel;
  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    Images imagepath = Images();
    return Scaffold(
        backgroundColor: themeColor.tertiary,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customSize(height: 5.h),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const ProfileScreen();
                    }));
                  },
                  child: CircleAvatar(
                      radius: 30.r,
                      backgroundImage: AssetImage(imagepath.image1)),
                ),
                fixheight10,
                CommonContainer(title: 'SNS560001'),
                fixwidth10,
                fixheight20,
                fixheight10,
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: modelList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.3,
                      crossAxisSpacing: 9.5,
                      mainAxisSpacing: 10.5),
                  itemBuilder: (BuildContext context, int index) {
                    dynamic data = modelList[index];
                    return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return data.widgetData;
                          }));
                        },
                        child: Container(
                          // height: 500.h,
                          decoration: BoxDecoration(
                              color: themeColor.primaryContainer,
                              borderRadius: BorderRadius.circular(10.sp)),
                          child: Padding(
                            padding: EdgeInsets.all(18.sp),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data.firstText,
                                    style: fonts.text18notBool.copyWith(
                                        color: themeColor.onPrimary,
                                        fontSize: 15.sp)),
                                fixheight15,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(data.secondText,
                                        style: fonts.text18notBool.copyWith(
                                            color: themeColor.onPrimary,
                                            fontSize: 15.sp)),
                                    fixwidth20,
                                    fixwidth20,
                                    Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      color: themeColor.onPrimary,
                                      size: 15.sp,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ));
                  },
                ),
              ],
            ),
          ),
        )));
  }
}
