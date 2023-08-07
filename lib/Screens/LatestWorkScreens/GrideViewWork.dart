import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../AppColors.dart';

class GridViewWork extends StatefulWidget {
  const GridViewWork({Key? key}) : super(key: key);

  @override
  State<GridViewWork> createState() => _GridViewWorkState();
}

class _GridViewWorkState extends State<GridViewWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: GridView.builder(
        itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 15.h,
              mainAxisSpacing: 15.w,
              //childAspectRatio: 2/2,
              crossAxisCount: 2),

        itemBuilder: (context, index) {
                  return Container(
                    clipBehavior: Clip.antiAlias,
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
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, size: 24.h, color: Colors.white,)))
                    ],),
                  );
              },),
    );
  }
}
