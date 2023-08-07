import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

class AppointmentDetailsPage extends StatefulWidget {
  const AppointmentDetailsPage({Key? key}) : super(key: key);

  @override
  State<AppointmentDetailsPage> createState() => _AppointmentDetailsPageState();
}

class _AppointmentDetailsPageState extends State<AppointmentDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text("حجز رقم:1",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20.h,
                color: Colors.black,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          Padding(
            padding: const EdgeInsets.all(20).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("تفاصيل الحجز",style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.w500, ),),
                SizedBox(height: 26.h,),
                Center(
                  child: Container(
                    width: 335.w,
                    // height: 286.h,
                    padding: EdgeInsets.all(22).w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("حجز رقم:1", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.black),),
                        SizedBox(height: 17.h,),
                        Divider(
                          thickness: 1,
                          color: AppColors.divider_grey,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("إسم الزبون", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp, color: AppColors.purple),),
                            Text("علا غانم", style: TextStyle(fontSize: 12.sp, color: AppColors.tv_grey_appoint),),
                          ],),
                        SizedBox(height: 18.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("الخدمة", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp, color: AppColors.purple),),
                            Text("الخدمة", style: TextStyle(fontSize: 12.sp, color: AppColors.tv_grey_appoint),),
                          ],),
                        SizedBox(height: 18.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("الوقت", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp, color: AppColors.purple),),
                            Text("19/3/2022,12:00PM", style: TextStyle(fontSize: 12.sp, color: AppColors.tv_grey_appoint),textDirection: TextDirection.ltr,),
                          ],),
                        SizedBox(height: 18.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("المجوع النهائي", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp, color: AppColors.purple),),
                            Text("12.0", style: TextStyle(fontSize: 12.sp, color: AppColors.tv_grey_appoint),textDirection: TextDirection.ltr,),
                          ],),
                        SizedBox(height: 18.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("رقم الفاتورة", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp, color: AppColors.purple),),
                            Text("1", style: TextStyle(fontSize: 12.sp, color: AppColors.tv_grey_appoint),textDirection: TextDirection.ltr,),
                          ],),
                        SizedBox(height: 18.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ملاحظات", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp, color: AppColors.purple),),
                            Text("ملاحظة 1", style: TextStyle(fontSize: 12.sp, color: AppColors.tv_grey_appoint),),
                          ],),
                      ],),

                  ),
                ),
              ],
            ),
          ) ,


          Spacer(),
          Container(
            height: 84.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 17, horizontal: 29).w,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

              SizedBox(
                width: 125.w,
                height:48.h ,
                child: TextButton(onPressed: (){}, child: Text("حذف", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColors.purple),),style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r))),
                  side: MaterialStatePropertyAll(BorderSide(color: AppColors.purple))
                ),),
              ),

              SizedBox(width: 8.w,),

              SizedBox(
                width: 125.w,
                height:48.h ,
                child: TextButton(onPressed: (){}, child: Text("تعديل", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.white),),style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(AppColors.purple),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r))),
                ),),
              ),
            ],),
          )
        ],),

      ),
    );
  }
}
