import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';
import 'package:hair_saloon_flutter_project/Screens/AboutUs/AboutUs.dart';
import 'package:hair_saloon_flutter_project/Screens/AddAppointments/AddAppointmentPage.dart';
import 'package:hair_saloon_flutter_project/Screens/AppointmentDetailsPage.dart';
import 'package:hair_saloon_flutter_project/Screens/FogotPassword/ForgotPasswordOne.dart';
import 'package:hair_saloon_flutter_project/Screens/FogotPassword/ForgotPasswordThree.dart';
import 'package:hair_saloon_flutter_project/Screens/Home/HomePage/AllPageView.dart';
import 'package:hair_saloon_flutter_project/Screens/LatestWorkScreens/GrideViewWork.dart';
import 'package:hair_saloon_flutter_project/Screens/LatestWorkScreens/LatestWorkScreen1Page.dart';
import 'package:hair_saloon_flutter_project/Screens/LatestWorkScreens/LatestWorkScreen2Page.dart';
import 'package:hair_saloon_flutter_project/Screens/LoginPage/Login.dart';
import 'package:hair_saloon_flutter_project/Screens/ServicesPage.dart';
import 'package:hair_saloon_flutter_project/Screens/SplashScreen/SplashLightTheme.dart';

import 'Screens/AboutUs/AboutSalloonTab.dart';
import 'Screens/AboutUs/CustomTabBar.dart';
import 'Screens/FogotPassword/ForgotPasswordTwo.dart';
import 'Screens/Home/HomePage/HomePage.dart';
import 'Screens/Home/NavigationPage.dart';
import 'Screens/OnBoardingPage.dart';
import 'Screens/SplashScreen/SplashDarkTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:(BuildContext context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        darkTheme: ThemeData.dark(),
        theme: ThemeData(
          fontFamily:'Tajawal',
          primaryColor: AppColors.purple,
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: SplashLightTheme(),
      ),
      designSize: const Size(375,812),
    );
  }
}


