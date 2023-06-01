import 'dart:async';

import 'package:blue_eye/corefile/constaints/commonVar.dart';
import 'package:blue_eye/corefile/constaints/image.dart';
import 'package:blue_eye/feature/SelectScreen/SelectScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Images imagepath = Images();

  @override
  void didChangeDependencies() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => SelectScreen())));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: fullHeight,
        width: fullWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagepath.image1),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          SizedBox(
            height: fullHeight * 0.5,
            width: fullWidth,
            child: Center(
              child: Image.asset(
                imagepath.logo1,
                fit: BoxFit.cover,
                scale: 3,
              ),
            ),
          ),
          customSize(height: 200),
          CircularProgressIndicator(
            color: themeColor.primary,
          )
        ]),
      )),
    );
  }
}
