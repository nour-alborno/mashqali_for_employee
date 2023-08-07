import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hair_saloon_flutter_project/AppColors.dart';

import 'HomePage/HomePage.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentTab = 3;
  List<Widget> widgets =[HomePage(), HomePage(), HomePage(), HomePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        child: Container(
          width: 60.w,
          height: 60.h,
          child: Image.asset("images/floatingButtonIcon.png",width: 24.w, height: 24.h,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            gradient: LinearGradient(colors: [AppColors.pink,AppColors.purple])
          ),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(4).w,
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Image.asset(
                  "images/calender.png",
                  width: 19.w,
                  height: 19.h,
                ),
                onPressed: () {},
              ),

              IconButton(
                icon:Image.asset("images/notification.png",width: 16.w, height: 19.h,),
                onPressed: () {},
              ),

              IconButton(
                icon: Image.asset(
                  "images/page.png",
                  width: 18.w,
                  height: 21.h,
                ),
                onPressed: () {},
              ),

              IconButton(
                icon: Image.asset(
                  "images/home.png",
                  width: 20.w,
                  height: 22.h,
                ),
                onPressed: () {},
              ),

            ],
          ),
        ),
      ),

      body: widgets[currentTab],
    );
  }
}
