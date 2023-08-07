
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

import '../Home/NavigationPage.dart';

class TabLogin extends StatefulWidget {
  const TabLogin({Key? key}) : super(key: key);

  @override
  State<TabLogin> createState() => _TabLoginState();
}

class _TabLoginState extends State<TabLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 29.h,
              ),
              Text(
                "البريد الإلكتروني",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              SizedBox(
                height: 12.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "ادخل البريد الإلكتروني",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.text_grey,
                  ),
                  suffixIcon: Image.asset(
                    "images/Message.png",
                    width: 19.w,
                    height: 17.h,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              Text(
                "كلمة المرور",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              SizedBox(
                height: 12.h,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "ادخل كلمة المرور",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.text_grey,
                  ),
                  suffixIcon: Image.asset(
                    "images/eye_closed.png",
                    height: 15.h,
                    width: 17.5.h,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              Text(
                "هل نسيت كلمة المرور؟",
                style: TextStyle(
                  fontSize: 13.sp,
                  color: AppColors.dark_text_grey,
                ),
              ),
              SizedBox(height: 76.h,),
              Container(
                width: 335.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r) ,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColors.pink, AppColors.purple],
                  ),
                ),

                child: MaterialButton(
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => NavigationPage()
                    )
                    );

                  },
                  child:  Text("تسجيل دخول", style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(height: 50.h,),
              Row(children: [
                Expanded(
                  child: Divider(
                    height: 1.h,
                    thickness: 0.5.w,
                    color: AppColors.purple,
                  ),
                ),
                SizedBox(width: 5.w,),
                Text("OR",style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold, color: AppColors.purple),),
                SizedBox(width: 5.w,),
                Expanded(
                  child: Divider(
                    height: 1.h,
                    thickness: 0.5.w,
                    color: AppColors.purple,
                  ),
                ),
              ],),
              SizedBox(height: 38.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(
                  height: 40.h,
                  width: 60.w,
                  child: OutlinedButton(
                    onPressed: (){},
                    child: Image.asset("images/facebook.png",width: 24.w, height: 24.h,),
                    style: ButtonStyle(
                     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)))
                    )
                  ),
                ),
                  SizedBox(width: 30.w,),

                SizedBox(
                  height: 40.h,
                  width: 60.w,
                  child: OutlinedButton(
                      onPressed: (){},
                      child: Image.asset("images/google.png",width: 24.w, height: 24.h,),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)))
                      )
                  ),
                ),
               ],)
            ],
          ),
        ),
      ),
    );
  }
}
