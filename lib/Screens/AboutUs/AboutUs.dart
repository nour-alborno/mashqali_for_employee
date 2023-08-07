
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';
import 'package:hair_saloon_flutter_project/Screens/AboutUs/CustomTabBar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        body: Stack(children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset("images/Rectangle 818.png", fit: BoxFit.cover,)),

          Positioned(
            top: 300,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(8).w,
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(24.r), topRight: Radius.circular(24.r))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Center(
                  child: Divider(
                    height: 16,
                    thickness: 4,
                    indent: 147.5.w,
                    endIndent:147.5.w,
                    color: AppColors.dark_divider_grey,
                  ),
                ),
                SizedBox(height: 24.h,),
                Text("Antaki Centre Hair && Feet Care",style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold
                ),),

                SizedBox(
                     height: 400,
                    child: CustomTabBar())
              ],),
            ),
          )
        ],),
      ),
    );
  }
}
