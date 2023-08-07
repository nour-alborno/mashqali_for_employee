
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

class AllPageView extends StatefulWidget {
  const AllPageView({Key? key}) : super(key: key);

  @override
  State<AllPageView> createState() => _AllPageViewState();
}

class _AllPageViewState extends State<AllPageView> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            SizedBox(height: 25.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("صالونات التجميل", style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500
            ),),
            Text("عرض الكل",style: TextStyle(
              fontSize: 13.sp,
              color: AppColors.purple
            ),),
          ],),
          SizedBox(height: 12.h,),

          SizedBox(
            height: 185.h,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return Container(
                width: 151.w,
                height: 183.h,
                margin: EdgeInsets.only(left: 12.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13).w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Center(child: Image.asset("images/logo-woman.png",width: 69.w, height: 69.h,)),
                          SizedBox(height: 12.h,),
                        Flexible(fit: FlexFit.loose,child: Text("صالون الأمل",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13.sp, color: Colors.black),maxLines: 3,softWrap: true ,overflow: TextOverflow.fade,)),
                       SizedBox(height: 9.h,),
                        Row(children: [
                          Icon(Icons.location_on_outlined,size: 15.w, color: AppColors.light_icon_grey,),
                          SizedBox(width: 5.w,),
                          Flexible(fit: FlexFit.loose,child: Text("الرياض - قرب مدرسة الأمل", style: TextStyle(fontSize: 12.sp, color: AppColors.light_icon_grey, fontWeight: FontWeight.w500),maxLines: 3,softWrap: true,overflow: TextOverflow.fade,))
                        ],),
                      ],),
                    ),


                  ],
                ),
              );
            },),
          ),
          SizedBox(height: 19.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("عروض خاصة", style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500
              ),),
              Text("عرض الكل",style: TextStyle(
                  fontSize: 13.sp,
                  color: AppColors.purple
              ),),
            ],),
          SizedBox(height: 12.h,),
          SizedBox(
            height: 185.h,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 146.w,
                  height: 189.h,
                  margin: EdgeInsets.only(left: 12.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 9).w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Container(
                              width: 122.w,
                              height: 100.h,
                             
                              decoration: BoxDecoration(
                                image:DecorationImage(image: AssetImage("images/nails.png")) ,
                                borderRadius: BorderRadius.circular(20.r)
                              ),
                            )),
                            SizedBox(height: 5.h,),
                            Flexible(fit: FlexFit.loose,child: Text("صالون الأمل",style: TextStyle(fontSize: 13.sp, color: Colors.black),maxLines: 3,softWrap: true ,overflow: TextOverflow.ellipsis,)),
                            SizedBox(height: 7.h,),
                            Flexible(fit: FlexFit.loose,child: Text("بدكير",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp, color: Colors.black),maxLines: 3,softWrap: true ,overflow: TextOverflow.ellipsis,)),

                            SizedBox(height: 7.h,),
                            Row(children: [
                              Flexible(fit: FlexFit.loose,child: Text("\$25", style: TextStyle(fontSize: 13.sp, color: Colors.black, fontWeight: FontWeight.bold),maxLines: 3,softWrap: true,overflow:TextOverflow.ellipsis,)),
                              SizedBox(width: 6.w,),
                              Flexible(fit: FlexFit.loose,child: Text("\$120", style: TextStyle(fontSize: 12.sp, color: AppColors.purple_60_opacity, ),maxLines: 3,softWrap: true,overflow: TextOverflow.ellipsis,))
                            ],),
                          ],),
                      ),


                    ],
                  ),
                );
              },),
          ),

        ],),
      ),
    );
  }
}
