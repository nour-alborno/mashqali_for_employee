
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';
import 'package:hair_saloon_flutter_project/Screens/LoginPage/TabLogin.dart';
import 'package:hair_saloon_flutter_project/Screens/LoginPage/TabSignin.dart';
import 'package:tabbar_gradient_indicator/tabbar_gradient_indicator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         backgroundColor: AppColors.background,

        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              SizedBox(height: 65.h,),
              Image.asset("images/logo-woman.png", width: 85.w, height: 80.h,),
              SizedBox(height: 38.h,),
              TabBar(
                  labelPadding: EdgeInsets.symmetric(vertical: 7).w,
                  labelStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  labelColor:AppColors.purple,
                  unselectedLabelColor: AppColors.purple_60_opacity,
                  indicator: TabBarGradientIndicator(
                      gradientColor: [AppColors.pink , AppColors.purple],
                      indicatorWidth: 5.w),


                  tabs: [
                    Tab(text: "تسجيل دخول",),
                    Tab(text: "حساب جديد",)

                  ]),
              Expanded(
                child: TabBarView(
                  children: [
                    TabLogin(),
                    TabSignin(),
                  ],
                ),
              ),
            ],
          ),
        ),


        ),

      );

  }
}
