import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  bool allClicked = true;
  bool hairClicked = false;
  bool makeupClicked = false;
  bool careClicked = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text("الخدمات",
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings,
                    size: 20.h,
                    color: AppColors.purple,
                  ),
                  SizedBox(
                    width: 5.5.w,
                  ),
                  Text(
                    "عرض الخدمات",
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(height: 26.h,),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        allClicked? allClicked = false : allClicked = true;
                      });
                    },
                    child: Text(
                      "الكل",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: allClicked ? AppColors.purple : Colors.black),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.r))),
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.purple_opacity)),
                  ),
                  SizedBox(width: 8.w,),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        hairClicked ? hairClicked = false : hairClicked = true;
                      });
                    },
                    child: Text(
                      "شعر",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: hairClicked ? AppColors.purple : Colors.black),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.r))),
                        backgroundColor:
                        MaterialStatePropertyAll(AppColors.purple_opacity)),
                  ),
                  SizedBox(width: 8.w,),
                  TextButton(
                    onPressed: () {
                      setState(() {
                       makeupClicked ? makeupClicked = false : makeupClicked = true;
                      });
                    },
                    child: Text(
                      "مكياج",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: makeupClicked ? AppColors.purple : Colors.black),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.r))),
                        backgroundColor:
                        MaterialStatePropertyAll(AppColors.purple_opacity)),
                  ),
                  SizedBox(width: 8.w,),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        careClicked ? careClicked = false : careClicked = true;
                      });
                    },
                    child: Text(
                      "عناية",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: careClicked ? AppColors.purple : Colors.black),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.r))),
                        backgroundColor:
                        MaterialStatePropertyAll(AppColors.purple_opacity)),
                  ),

                ],
              ),
              SizedBox(height: 24.h,),
              Expanded(
                flex: 4,
                child: PageView(

                  children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(20).w,
                      width: 335.w,
                    //  height: 354.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.services_shadow,
                                offset: Offset(5,5),
                                blurRadius: 30
                            )
                          ],
                          color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("رموش", style: TextStyle(fontSize: 14.sp,color: Colors.black),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 22.5).w,
                                decoration: BoxDecoration(
                                  color:AppColors.light_green,
                                  borderRadius: BorderRadius.circular(50.r)
                                ),
                                child: Text("\$300.00", textDirection: TextDirection.ltr,),
                              )
                            ],),

                          SizedBox(height: 8.h,),
                          Divider(
                            thickness: 1,
                            color: AppColors.divider_grey,
                            indent: 8.w,
                            endIndent: 8.w,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("بدكير",style: TextStyle(fontSize: 14.sp,color: Colors.black),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 22.5).w,
                                decoration: BoxDecoration(
                                    color:AppColors.light_green,
                                    borderRadius: BorderRadius.circular(50.r)
                                ),
                                child: Text("\$300.00", textDirection: TextDirection.ltr,),
                              )
                            ],),

                          SizedBox(height: 8.h,),
                          Divider(
                            thickness: 1,
                            color: AppColors.divider_grey,
                            indent: 8.w,
                            endIndent: 8.w,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("سشوار",style: TextStyle(fontSize: 14.sp,color: Colors.black),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 22.5).w,
                                decoration: BoxDecoration(
                                    color:AppColors.light_green,
                                    borderRadius: BorderRadius.circular(50.r)
                                ),
                                child: Text("\$300.00", textDirection: TextDirection.ltr,),
                              )
                            ],),

                          SizedBox(height: 8.h,),
                          Divider(
                            thickness: 1,
                            color: AppColors.divider_grey,
                            indent: 8.w,
                            endIndent: 8.w,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("بروتين",style: TextStyle(fontSize: 14.sp,color: Colors.black),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 22.5).w,
                                decoration: BoxDecoration(
                                    color:AppColors.light_green,
                                    borderRadius: BorderRadius.circular(50.r)
                                ),
                                child: Text("\$300.00", textDirection: TextDirection.ltr,),
                              )
                            ],),

                          SizedBox(height: 8.h,),
                          Divider(
                            thickness: 1,
                            color: AppColors.divider_grey,
                            indent: 8.w,
                            endIndent: 8.w,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("قص",style: TextStyle(fontSize: 14.sp,color: Colors.black),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 22.5).w,
                                decoration: BoxDecoration(
                                    color:AppColors.light_green,
                                    borderRadius: BorderRadius.circular(50.r)
                                ),
                                child: Text("\$300.00", textDirection: TextDirection.ltr,),
                              )
                            ],),

                          SizedBox(height: 8.h,),
                          Divider(
                            thickness: 1,
                            color: AppColors.divider_grey,
                            indent: 8.w,
                            endIndent: 8.w,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("صبغة",style: TextStyle(fontSize: 14.sp,color: Colors.black),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 22.5).w,
                                decoration: BoxDecoration(
                                    color:AppColors.light_green,
                                    borderRadius: BorderRadius.circular(50.r)
                                ),
                                child: Text("\$300.00", textDirection: TextDirection.ltr,),
                              )
                            ],),

                          SizedBox(height: 8.h,),
                          Divider(
                            thickness: 1,
                            color: AppColors.divider_grey,
                            indent: 8.w,
                            endIndent: 8.w,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("تنظيف بشرة",style: TextStyle(fontSize: 14.sp,color: Colors.black),),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 22.5).w,
                                decoration: BoxDecoration(
                                    color:AppColors.light_green,
                                    borderRadius: BorderRadius.circular(50.r)
                                ),
                                child: Text("\$300.00", textDirection: TextDirection.ltr,),
                              )
                            ],),

                          SizedBox(height: 8.h,),
                          Divider(
                            thickness: 1,
                            color: AppColors.divider_grey,
                            indent: 8.w,
                            endIndent: 8.w,
                          ),


                        ],),
                    ),
                  ),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
