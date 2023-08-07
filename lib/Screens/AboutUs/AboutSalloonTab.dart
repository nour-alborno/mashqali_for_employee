import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

class AboutSalloonTab extends StatefulWidget {
  const AboutSalloonTab({Key? key}) : super(key: key);

  @override
  State<AboutSalloonTab> createState() => _AboutSalloonTabState();
}

class _AboutSalloonTabState extends State<AboutSalloonTab> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 19.h,),
             Text(
                 "   صالون يقدم جميع أنواع المساج وبأسعار مناسبة وكما يوجد لديه أحدث أنواع الكريمات للعناية بالبشرة وأيضا هناك الزيوت المناسبة لنوع شعرك "
, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp, color: AppColors.light_details_grey),
             ),








              SizedBox(height: 16.h,),
              Row(children: [
                ShaderMask(
                  child: Image.asset("images/phone.png",height: 18.h, width: 18.w,),
                  shaderCallback: (Rect bounds) {
                  return LinearGradient(
                      colors: [AppColors.pink, AppColors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight).createShader(bounds);
                },
                  blendMode: BlendMode.srcATop,
                ),
                SizedBox(width: 6.w,),
                Text("0597771142", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp, color: AppColors.light_details_grey),),
                SizedBox(width: 62.w,),
                ShaderMask(
                  child: Icon(Icons.location_on_outlined, size: 20.w,),
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                        colors: [AppColors.pink, AppColors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight).createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                ),
                SizedBox(width: 6.w,),
                Text("الدوحة_قطر", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp, color: AppColors.light_details_grey),),

              ],),
              SizedBox(height: 16.h,),
              Text("ساعات العمل", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.sp, color: Colors.black),),
              SizedBox(height: 11.h,),
              Row(

                children: [
                Image.asset("images/Iconly-Light-Time Circle.png",height: 18.h, width: 18.w,),
                SizedBox(width: 6.w,),
                Text("9:00:00 A.M", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp, color: AppColors.light_details_grey),),
                SizedBox(width: 62.w,),
                Image.asset("images/Iconly-Light-Time Circle.png",height: 18.h, width: 18.w,),
                SizedBox(width: 6.w,),
                Text("6:00:00 P.M", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp, color: AppColors.light_details_grey),),

              ],),
              SizedBox(height: 16.h,),
              Text("مواقع التواصل الإجتماعي", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.sp, color: Colors.black),),
              SizedBox(height: 11.h,),
              Row(children: [
                Image.asset("images/instagram.png",width: 18.w, height: 18.h,),
                SizedBox(width: 12.w,),
                Image.asset("images/twitter.png",width: 19.w, height: 18.h,),
                SizedBox(width: 12.w,),
                Image.asset("images/facebook_icon.png",width: 9.w, height: 18.h,),
                SizedBox(width: 12.w,),
                Image.asset("images/link.png",width: 18.w, height: 18.h,),
              ],),

              SizedBox(height: 31.w,),

              Container(
                width: 335.w,
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
                  child:  Text("إحجز الأن", style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
              ),

          ],),
        ),
      ),
    );
  }
}
