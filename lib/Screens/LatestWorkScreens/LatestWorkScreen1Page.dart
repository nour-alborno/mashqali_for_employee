import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/Screens/LatestWorkScreens/GrideViewWork.dart';

import '../../AppColors.dart';

class LatestWorkScreen1Page extends StatefulWidget {
  const LatestWorkScreen1Page({Key? key}) : super(key: key);

  @override
  State<LatestWorkScreen1Page> createState() => _LatestWorkScreen1PageState();
}

class _LatestWorkScreen1PageState extends State<LatestWorkScreen1Page> {
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
            SizedBox(height: 25.h,),
            
            Expanded(child: GridViewWork()),


          ],),
        ),

      ),
    );
  }
}
