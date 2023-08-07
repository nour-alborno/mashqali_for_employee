import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

class SplashDarkTheme extends StatefulWidget {
  const SplashDarkTheme({Key? key}) : super(key: key);

  @override
  State<SplashDarkTheme> createState() => _SplashDarkThemeState();
}

class _SplashDarkThemeState extends State<SplashDarkTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: Column(
        children: [
          Spacer(),
          Center(child: Image.asset("images/logo-woman.png",width: 103.w, height: 93.h, color: Colors.white,)),
          Spacer(),

          Text("مشغلي", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500, color: Colors.white),),
          Text("لإدارة صالونات التجميل", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500, color: Colors.white),),
          SizedBox(height: 19.h,)
        ],
      ),
    );
  }
}
