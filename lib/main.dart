import 'package:blue_eye/corefile/constaints/colors.dart';
import 'package:blue_eye/feature/CompanyScreen/DetailScreen/DetailProvidet.dart';
import 'package:blue_eye/feature/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'feature/IndivisualScreen/SignInScreen/SignInProvider.dart';
import 'feature/IndivisualScreen/SignUpScreen/SignUpProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SignInProvider()),
        ChangeNotifierProvider(create: (_) => SignUpProvider()),
        ChangeNotifierProvider(create: (_) => CompanyDetailProvider()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            //  return const BoardingScreen();
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Blue Eye',
              theme: ThemeData(
                colorScheme: lightColorScheme,
                useMaterial3: true,
                // primarySwatch:,
              ),
              home: SplashScreen(),
            );
          }),
    );
  }
}
