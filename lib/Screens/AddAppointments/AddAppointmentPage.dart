
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

class AddAppointmentPage extends StatefulWidget {
  const AddAppointmentPage({Key? key}) : super(key: key);

  @override
  State<AddAppointmentPage> createState() => _AddAppointmentPageState();
}

class _AddAppointmentPageState extends State<AddAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(

      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text("إضافة حجز",
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

        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text("الخدمة", style: TextStyle(fontSize: 14.sp, color: AppColors.light_icon_grey,fontWeight: FontWeight.w500),),
                    SizedBox(width: 90.w,),
                    Text("الكمية", style: TextStyle(fontSize: 14.sp, color: AppColors.light_icon_grey,fontWeight: FontWeight.w500),),
                    SizedBox(width: 21.w,),
                    Text("الإجمالي", style: TextStyle(fontSize: 14.sp, color: AppColors.light_icon_grey,fontWeight: FontWeight.w500),),
                    SizedBox(width: 51.w,),
                    Text("حذف", style: TextStyle(fontSize: 14.sp, color: AppColors.light_icon_grey,fontWeight: FontWeight.w500),),

                  ],),
                  ListView.builder(
                    physics:NeverScrollableScrollPhysics() ,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("تصفيف شعر", style: TextStyle(fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.bold),),
                              Text("200\$", style: TextStyle(fontSize: 14.sp, color: AppColors.dark_text_grey2),),
                            ],),
                          SizedBox(width: 40.w,),

                          Container(
                            width:40.w,
                            height:40.h,
                            decoration:BoxDecoration(
                            color:Colors.white, 
                              borderRadius: BorderRadius.circular(10.r)
                      ),
                            child: Center(child: Text("1",style: TextStyle(fontSize: 16.sp, color: Colors.black),)),
                          ),
                          SizedBox(width: 15.w,),
                          Container(
                            decoration:BoxDecoration(
                                color:AppColors.opacity_grey_4,
                                borderRadius: BorderRadius.circular(10.r)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10).w,
                            child: Center(child: Text("300.000",style: TextStyle(fontSize: 16.sp, color: AppColors.opacity_grey_74),textDirection: TextDirection.ltr,)),
                          ),
                          SizedBox(width: 20.w,),
                          Container(
                            width:56.w,
                            height:35.h,
                            decoration:BoxDecoration(
                                color:AppColors.purple,
                                borderRadius: BorderRadius.circular(10.r)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10).w,
                            child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline_outlined,color: Colors.white,size: 13.w,))),
                          ),
                        ],),
                        SizedBox(height: 20.h,),
                        Divider(
                          thickness: 2,
                          color: AppColors.divider_grey,
                          endIndent: 20,
                          indent: 20,
                        ),
                        SizedBox(height: 20.h,),
                      ]
                    );
                  },),

                  Row(
                    children: [
                    Text("الخصم%", style: TextStyle(fontSize: 18.sp, color: AppColors.black1),),
                    SizedBox(width: 107.w,),
                    Text("السعر", style: TextStyle(fontSize: 18.sp, color: AppColors.black1),),
                  ],),
                  SizedBox(height: 15.h,),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20).w,
                        alignment: Alignment.centerRight,
                        width: 160.w,
                        height: 54.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r),
                          
                        ),
                        child: Text("800", style: TextStyle(fontSize: 16.sp,color: AppColors.opacity_grey_74),),
                      ),
                      SizedBox(width: 15.w,),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20).w,
                        alignment: Alignment.centerRight,
                        width: 160.w,
                        height: 54.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r),

                        ),
                        child: Text("20", style: TextStyle(fontSize: 16.sp,color: AppColors.opacity_grey_74),),
                      ),
                    ],),
                  SizedBox(height: 14.h,),
                  Text("ملاحظات",style: TextStyle(fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.w500),),
                  SizedBox(height: 14.h,),
                  SizedBox(
                    height:125.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "أكتب ملاحظاتك هنا",
                        hintStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: AppColors.hint_color),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide.none
                        )
                      ),
                      maxLines: 10,


                    ),
                  ),

                  SizedBox(height: 66.h,),

                  Container(
                    width: 335.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                      color: AppColors.purple,
                      borderRadius: BorderRadius.circular(12.r),

                    ),
                    child:TextButton(onPressed: (){}, child: Text("حفظ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp, color: Colors.white ),))
                  )


                ],),
            ),
          ]
        ),
      ),
    );
  }
}
