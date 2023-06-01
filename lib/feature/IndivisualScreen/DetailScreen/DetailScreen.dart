import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../corefile/constaints/Common_ins.dart';
import '../../../corefile/constaints/commonVar.dart';
import '../../../corefile/constaints/image.dart';
import '../../../corefile/constaints/widgets.dart';
import '../SignInScreen/SignInScreen.dart';
import 'Detail_Model.dart';
import 'Profile_Screen/Profile.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<DetailModel> modelList = allData;

  String? radioBtn;

  bool isOtherSelected = false;

  TextEditingController reclaim = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    Images imagepath = Images();
    // final data = Provider.of<DetailProvider>(context);
    return Scaffold(
        backgroundColor: themeColor.tertiary,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(18.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customSize(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CommonArrow(),
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
                ],
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
              fixheight20,
              fixheight20,
              Row(
                children: [
                  Expanded(
                    child: CommonButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return SignInScreeen();
                          }));
                        },
                        text: 'Accept'),
                  ),
                  fixwidth10,
                  Expanded(
                    child: CommonButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(content: StatefulBuilder(
                                  builder: (contexts, StateSetter setState) {
                                handleGenderChange(String? value) {
                                  radioBtn = value;

                                  if (value != null && value == 'Other') {
                                    isOtherSelected = true;
                                  } else {
                                    isOtherSelected = false;
                                  }
                                  // setState;

                                  setState(
                                    () {},
                                  );
                                }

                                return SizedBox(
                                  height: 500.h,
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 60.h,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: themeColor.primary,
                                              borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(10.r),
                                                  topLeft:
                                                      Radius.circular(10.r))),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 15.w, top: 15.h),
                                            child: Text(
                                              'Reason',
                                              style: fonts.text18.copyWith(
                                                color: themeColor.onPrimary,
                                              ),
                                            ),
                                          )),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.w, right: 15.w),
                                        child: Column(
                                          children: [
                                            RadioListTile<String>(
                                              title: Text(
                                                'Low price',
                                                style: fonts.text18notBool
                                                    .copyWith(fontSize: 15.sp),
                                              ),
                                              activeColor: themeColor.primary,
                                              value: "",
                                              groupValue: radioBtn,
                                              onChanged: handleGenderChange,
                                            ),
                                            Divider(
                                              height: 5.h,
                                              thickness: 1.0,
                                              color: themeColor.outlineVariant,
                                            ),
                                            RadioListTile<String>(
                                              title: Text(
                                                'Visit Plan not suitable.',
                                                style: fonts.text18notBool
                                                    .copyWith(fontSize: 15.sp),
                                              ),
                                              activeColor: themeColor.primary,
                                              value:
                                                  'weekly visits is not very well',
                                              groupValue: radioBtn,
                                              onChanged: handleGenderChange,
                                            ),
                                            Divider(
                                              height: 5.h,
                                              thickness: 1.0,
                                              color: themeColor.outlineVariant,
                                            ),
                                            RadioListTile<String>(
                                              title: Text(
                                                'Other',
                                                style: fonts.text18notBool
                                                    .copyWith(fontSize: 15.sp),
                                              ),
                                              activeColor: themeColor.primary,
                                              value: 'Other',
                                              groupValue: radioBtn,
                                              onChanged: handleGenderChange,
                                            ),
                                            Divider(
                                              height: 5.h,
                                              thickness: 1.0,
                                              color: themeColor.outlineVariant,
                                            ),
                                            fixheight20,
                                            Container(
                                              height: 130.h,
                                              decoration: BoxDecoration(
                                                color:
                                                    themeColor.outlineVariant,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15.sp),
                                                border: Border.all(
                                                    color: themeColor
                                                        .onPrimaryContainer,
                                                    width: 1),
                                              ),
                                              child: TextField(
                                                controller: reclaim,
                                                enabled: isOtherSelected,
                                                cursorColor:
                                                    themeColor.outlineVariant,
                                                maxLines: null,
                                                keyboardType:
                                                    TextInputType.multiline,
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10.w,
                                                          vertical: 10.h),
                                                  border: InputBorder.none,
                                                  hintText: 'Other...',
                                                ),
                                              ),
                                            ),
                                            fixheight20,
                                            fixheight20,
                                            CommonButton(
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (ctx) {
                                                    return SignInScreeen();
                                                  }));
                                                },
                                                text: 'Submit'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }));
                            },
                          );

                          // Get.defaultDialog(
                          //     title: '',
                          //     content: );
                        },
                        state: 1,
                        text: 'Reject'),
                  ),
                ],
              )
            ],
          ),
        )));
  }
}
