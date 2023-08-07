import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/Screens/LoginPage/Login.dart';

class SplashLightTheme extends StatefulWidget {
  const SplashLightTheme({Key? key}) : super(key: key);

  @override
  State<SplashLightTheme> createState() => _SplashLightThemeState();
}

class _SplashLightThemeState extends State<SplashLightTheme> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Spacer(),
          Center(child: Image.asset("images/logo-woman.png",width: 103.w, height: 93.h,)),
          Spacer(),

          Text("مشغلي", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500, color: Colors.black),),
          Text("لإدارة صالونات التجميل", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500, color: Colors.black),),
          SizedBox(height: 19.h,)
        ],
      ),
    );
  }



  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Login()
    )
    );
  }


















}
