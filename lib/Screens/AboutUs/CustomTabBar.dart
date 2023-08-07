
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';
import 'package:hair_saloon_flutter_project/Screens/AboutUs/AboutSalloonTab.dart';
import 'package:hair_saloon_flutter_project/Screens/AboutUs/SalloonDivisionsTab.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {

  bool clicked1 = true;
  bool clicked2 = false;
  late PageController controller;


  @override
  void initState() {

    super.initState();
     controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5).w,
          child: Column(

            children:[
              SizedBox(height: 15.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
              //    width: 160.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r) ,
                    gradient: clicked1? LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [AppColors.pink, AppColors.purple],) : LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.white, Colors.white],) ,
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      setState(() {
                        clicked1 = true;
                        clicked2 = false;

                        controller.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      });
                    },
                    child: Text("معلومات عن الصالون", style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: clicked1? Colors.white : Colors.black,
                    ),),


                  ),

                ),
                SizedBox(width: 15.w,),

                Container(
                  width: 160.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r) ,
                    gradient: clicked2? LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [AppColors.pink, AppColors.purple],) : LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.white, Colors.white],) ,
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      setState(() {
                        clicked1 = false;
                        clicked2 = true;
                       controller.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                        );

                      });
                    },
                    child: Text("أفرع الصالون", style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: clicked2? Colors.white:Colors.black,
                    ),),


                  ),

                )

              ],),

              Expanded(
                child: PageView(
                  controller: controller,
               //   physics: NeverScrollableScrollPhysics(),
                  children: [
                  AboutSalloonTab(),
                  SalloonDivisionsTab(),
                ],),
              )
          ]),
        ),


    ),
    );
  }
}
