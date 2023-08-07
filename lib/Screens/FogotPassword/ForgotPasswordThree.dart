import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../AppColors.dart';

class ForgotPasswordThree extends StatefulWidget {
  const ForgotPasswordThree({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordThree> createState() => _ForgotPasswordThreeState();
}

class _ForgotPasswordThreeState extends State<ForgotPasswordThree> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text("نسيت كلمة المرور", style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
          centerTitle: true,
          backgroundColor: AppColors.background,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios, size: 16.h,color: Colors.black,),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 83.h,),
            Text(
              "أنشىء كلمة مرور جديدة",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: Colors.black),
            ),
            SizedBox(height: 30.h,),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "ادخل كلمة المرور",
                  helperText: "يجب أن تكون مكونة من 8 أحرف",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.text_grey,
                  ),
                  helperStyle: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.dark_text_grey2
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
SizedBox(height: 22.h,),
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



SizedBox(height:105.h ,),

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
                  onPressed: (){},
                  child:  Text("حفظ", style: TextStyle(
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
