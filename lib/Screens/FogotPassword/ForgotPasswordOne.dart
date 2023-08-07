
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

class ForgotPasswordOne extends StatefulWidget {
  const ForgotPasswordOne({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordOne> createState() => _ForgotPasswordOneState();
}

class _ForgotPasswordOneState extends State<ForgotPasswordOne> {
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
          padding: const EdgeInsets.all(20).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 163.h,),

              SizedBox(
                width: 270,
                child: RichText(
                  maxLines: 3,
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text: "أدخل عنوان ",
                    style: TextStyle(fontSize: 16.sp,color: AppColors.dark_text_grey2,),
                    children: <TextSpan>[
                      TextSpan(text: "البريد الإلكتروني ", style: TextStyle( color: AppColors.purple,
                          fontSize:16.sp), ),
                      TextSpan(text: 'لإعادة تعييد كلمة المرور ', style: TextStyle(fontSize: 16.sp,color: AppColors.dark_text_grey2)),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 42.h,
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

             SizedBox(height: 70.h,),

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
                  child:  Text("أرسل", style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
              ),



            ],
          ),
        ),

      ),
    );
  }
}
