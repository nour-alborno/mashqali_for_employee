import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

import 'GrideViewWork.dart';

class LatestWorkScreen2Page extends StatefulWidget {
  const LatestWorkScreen2Page({Key? key}) : super(key: key);

  @override
  State<LatestWorkScreen2Page> createState() => _LatestWorkScreen2PageState();
}

class _LatestWorkScreen2PageState extends State<LatestWorkScreen2Page> {
  int page =0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text("أعمال الصالون",
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

        body: Padding(
          padding: const EdgeInsets.all(20).w,
          child: Column(children: [

            Container(
              width: 335.w,
              height: 434.h,

              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    page = value!;
                  });
                },
                itemBuilder: (context, index) {
                return Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),

                  ),
                  child: Stack(

                    children: [
                      Positioned(
                          top: 0,
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: Image.asset("images/nails.png",fit: BoxFit.cover,width: 160.w,height: 200.h,)),

                      Positioned(
                          top: 14.h,
                          left: 16.w,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, size: 30.h, color: Colors.white,))),

                      Positioned(
                        bottom: 19.h,
                        left: 115.w,
                        right: 115.w,
                        child: Row(children: [
                         Container(
                           width: page ==0? 34.w : 25.w,
                           height: 10.h,

                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(24.r),
                             color: page ==0?  AppColors.purple : AppColors.grey_indicator ,
                           ),
                         ),
                          SizedBox(width: 6.w,),
                          Container(
                            width: page ==1? 34.w : 25.w,
                            height: 10.h,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.r),
                              color: page ==1?  AppColors.purple : AppColors.grey_indicator ,
                            ),
                          ),
                          SizedBox(width: 6.w,),
                          Container(
                            width: page ==2? 34.w : 25.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.r),
                              color:page ==2?  AppColors.purple : AppColors.grey_indicator ,
                            ),
                          ),
                          SizedBox(width: 6.w,),
                        ],),
                      )
                    ],),
                );
              },)
            ), 
            SizedBox(height: 20.h,),
            Expanded(child: GridViewWork()),
          ],),
        ),

      ),
    );
  }
}
