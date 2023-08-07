import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
        body: Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(10).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 168.h,
            ),
            Image.asset(
              "images/Onboarding.png",
              width: 358.w,
              height: 238.h,
            ),
            SizedBox(
              height: 46.h,
            ),
            Text(
              "أهلاً بكم في",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "تطبيق مشغلي",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.purple,
                wordSpacing: 10.w,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "من خلال تطبيق الأدارة الخاص بمشغلي يمكنك متابعة اعمال صالونك ومتابعتها بنجاح",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  wordSpacing: 10.w,
                  height: 1.5.h),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 65.h,
            ),
            Container(
              width: 136.w,
              height: 56.h,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10.r) ,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.pink, AppColors.purple],
                ),
              ),

              child: MaterialButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.arrow_back_ios, color: Colors.white, size: 12.w,),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text("متابعة", style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),

                  ],),
              ),
            )
  
          ],
        ),
      ),
    ));
  }
}
