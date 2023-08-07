import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';
import 'package:hair_saloon_flutter_project/Screens/Home/HomePage/AllPageView.dart';
import 'package:hair_saloon_flutter_project/Screens/Home/HomePage/HairPageView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool clicked1 =true;
  bool clicked2 = false;
  late PageController controller;


  @override
  void initState() {

    super.initState();
    controller = PageController(initialPage: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
       drawer: Drawer(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 5.h,),
              // AppBar
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Image.asset("images/profile_img.png",width: 48.w, height: 48.h,),
                SizedBox(width: 8.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("أهلاًً", style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.purple
                  ),),
                  Text("منال محمود", style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),

                ],), 
                SizedBox(width: 147.w,),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Builder(
                    builder: (BuildContext context){
                      return IconButton(
                        onPressed: (){ Scaffold.of(context).openDrawer();},
                        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                        icon: Image.asset("images/menu.png",width: 24.w, height: 24.h,),
                      );
                    },
                  )
                )
              ],
              ),
              SizedBox(height: 29.h,),

              //search Row
              Row(children: [
                SizedBox(
                  width: 275.w,
                  height: 48.h,
                  child: Material(
                    borderRadius: BorderRadius.circular(12.r),
                    elevation: 5.h,
                    shadowColor: Colors.white30,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "البحث عن صالون، خدمة أو منتج",
                        hintStyle: TextStyle(
                          color: AppColors.text_grey,
                          fontSize: 15.sp,
                        ),
                        prefixIcon: Icon(Icons.search, color: AppColors.purple, size: 25,),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide.none
                          )
                        )
                      ),
                  ),),

                SizedBox(width: 12.w,),
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: Offset(0, 10),
                        blurRadius: 5
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.r) ,
                    border: Border.all(
                      color: AppColors.border_black
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [AppColors.pink, AppColors.purple],
                    ),
                  ),

                  child: IconButton(onPressed: (){}, icon: Image.asset("images/filter.png",width: 21.w, height: 21.h,))
                )

              ],),

              SizedBox(height: 12.h,),
              //Filters
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 60.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r) ,
                        gradient: clicked1? LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [AppColors.pink, AppColors.purple],) : LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.white, Colors.white],) ,
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          setState(() {
                            clicked1 = true;
                            clicked2 = false;

                            controller.animateToPage(
                              0,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          });
                        },
                        child: Text("الكل", style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: clicked1?FontWeight.w500: FontWeight.normal,
                          color: clicked1? Colors.white : Colors.black,
                        ),),


                      ),

                    ),
                    SizedBox(width: 8.w,),

                    Container(
                      width: 60.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r) ,
                        gradient: clicked2? LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [AppColors.pink, AppColors.purple],) : LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.white, Colors.white],) ,
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          setState(() {
                            clicked1 = false;
                            clicked2 = true;
                            controller.animateToPage(
                              1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );

                          });
                        },
                        child: Text("شعر", style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: clicked2? FontWeight.w500 : FontWeight.normal,
                          color: clicked2? Colors.white:Colors.black,
                        ),),


                      ),

                    )

                  ],),


                Expanded(
                  child: PageView(
                    controller: controller,
                       physics: NeverScrollableScrollPhysics(),
                    children: [
                         AllPageView(),
                         HairPageView()
                    ],),
                )



            ],),
          ),
        ),
      ),
    );
  }
}
