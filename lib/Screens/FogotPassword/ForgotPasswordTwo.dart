
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

class ForgotPasswordTwo extends StatefulWidget {
  const ForgotPasswordTwo({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordTwo> createState() => _ForgotPasswordTwoState();
}

class _ForgotPasswordTwoState extends State<ForgotPasswordTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: 141.h,),
          Container(
            width: 139.w,
            height: 129.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.purple_opacity
            ),

            child: Image.asset("images/envelope-open.png", width: 88.w, height: 76.h,),
          ),
           SizedBox(height: 29.h,),
            RichText(
              maxLines: 3,
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "يرجى تفقد ",
                style: TextStyle(fontSize: 16.sp,color: AppColors.dark_text_grey2,),
                children: <TextSpan>[
                  TextSpan(text: "بريدك الإلكتروني، ", style: TextStyle( color: AppColors.purple,
                      fontSize:16.sp), ),
                  TextSpan(text: 'لقد أرسلنا رابط تعيين كلمة المرور ', style: TextStyle(fontSize: 16.sp,color: AppColors.dark_text_grey2)),
                ],
              ),
            ),



            SizedBox(height: 108.h,),

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
                child:  Text("فتح تطبيق الجيميل", style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
              ),
            ),

            SizedBox(height: 9.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("تخطى سأؤكد لاحقاً", style: TextStyle(fontSize: 13.sp, color: AppColors.dark_text_grey2),),
              ],
            )

          ],),
      ),
    );
  }
}
