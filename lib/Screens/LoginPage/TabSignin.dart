
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/Screens/Home/NavigationPage.dart';

import '../../AppColors.dart';

class TabSignin extends StatefulWidget {
  const TabSignin({Key? key}) : super(key: key);

  @override
  State<TabSignin> createState() => _TabSigninState();
}

class _TabSigninState extends State<TabSignin> {
  bool agreeOnPrivcy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).w,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 29.h,
                ),
                Text(
                  "الإسم الكامل",
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: Colors.black),
                ),
                SizedBox(
                  height: 12.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "مثال: منال محمود",
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.text_grey,
                    ),
                    suffixIcon: Icon(Icons.person_outline_outlined, size: 20, color: AppColors.text_grey,),
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
                  "البريد الإلكتروني",
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: Colors.black),
                ),
                SizedBox(
                  height: 12.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "أدخل البريد الإلكترومي",
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.text_grey,
                    ),
                    suffixIcon:  Image.asset(
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
                  "رقم التواصل",
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: Colors.black),
                ),
                SizedBox(
                  height: 12.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "0595842364",
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.text_grey,
                    ),
                    suffixIcon:  Image.asset(
                      "images/phone.png",
                      width: 18.w,
                      height: 18.h,
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
                  "تأكيد كلمة المرور",
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

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Checkbox(
                    value:  agreeOnPrivcy,
                    onChanged: (value) {
                    setState(() {
                      agreeOnPrivcy =value!;
                    });
                  },
                  ),
                  Text("قرأت وموافق على كل بنود",style: TextStyle(
                fontSize: 12.sp,
                    color: Colors.black
              ),),
                    SizedBox(width: 2.w,),
                    Text(
                      "الشروط والأحكام",
                      style: TextStyle(fontSize: 12.sp, color: AppColors.purple, decoration: TextDecoration.underline ),

                    ),
                  ],),

                SizedBox(height: 42.h,),
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
                SizedBox(height: 93.h,)
              ],


            ),
          )
      ),
    );
  }
}
