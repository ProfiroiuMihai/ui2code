import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'package:google_fonts/google_fonts.dart';

class No_Tickets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(height: 731, width: 375);

    return Scaffold(
        body: SafeArea(
            child: Stack(children: <Widget>[
      Container(
          color: Color.fromARGB(255, 255, 255, 255),
          height: 731.h,
          margin: EdgeInsets.only(left: 0.w, top: 0.h),
          width: 375.w),
      Container(
          child: Text("There are no tickets.",
              style: TextStyle(
                  color: Color.fromARGB(255, 131, 131, 156), fontSize: 18.sp),
              textAlign: TextAlign.left),
          height: 28.h,
          margin: EdgeInsets.only(left: 106.w, top: 407.h),
          width: 163.w),
      Container(
          child: Image.asset("images/no_tickets_group_221.png"),
          height: 173.7.h,
          margin: EdgeInsets.only(left: 78.w, top: 209.h),
          width: 219.21.w),
      Container(
          height: 28.h,
          margin: EdgeInsets.only(left: 28.w, top: 44.h),
          width: 134.w),
      Container(
          height: 24.h,
          margin: EdgeInsets.only(left: 28.w, top: 47.h),
          width: 24.w),
      Container(
          child: Image.asset("images/no_tickets_color_gray.png"),
          height: 20.32.h,
          margin: EdgeInsets.only(left: 52.w, top: 48.5.h),
          width: 24.w),
      Container(
          child: Text("Tickets",
style: GoogleFonts.roboto(color: Color.fromARGB(255, 8, 7, 58), fontSize: 24.sp,fontWeight: FontWeight.bold ),
//              style: TextStyle(
//                  color: Color.fromARGB(255, 8, 7, 58), fontSize: 24.sp,fontWeight: FontWeight.bold ),
              textAlign: TextAlign.left),
          height: 28.h,
          margin: EdgeInsets.only(left: 82.w, top: 44.h),
          width: 80.w),
      Container(
          height: 24.h,
          margin: EdgeInsets.only(left: 0.w, top: 0.h),
          width: 375.w),
      Container(
          height: 24.h,
          margin: EdgeInsets.only(left: 0.w, top: 0.h),
          width: 375.w),
      Container(
          child: Text("11:11",
              style: TextStyle(
                  color: Color.fromARGB(255, 8, 7, 58), fontSize: 14.sp),
              textAlign: TextAlign.right),
          height: 17.h,
          margin: EdgeInsets.only(left: 330.w, top: 4.h),
          width: 37.w),
      Container(
          height: 18.h,
          margin: EdgeInsets.only(left: 8.w, top: 3.h),
          width: 18.w),
      Container(
          color: Color.fromARGB(255, 255, 255, 255),
          height: 18.h,
          margin: EdgeInsets.only(left: 8.w, top: 3.h),
          width: 18.w),
      Container(
          height: 18.h,
          margin: EdgeInsets.only(left: 28.w, top: 3.h),
          width: 18.w),
      Container(
          color: Color.fromARGB(255, 255, 255, 255),
          height: 18.h,
          margin: EdgeInsets.only(left: 28.w, top: 3.h),
          width: 18.w),
      Container(
          height: 18.h,
          margin: EdgeInsets.only(left: 48.w, top: 3.h),
          width: 18.w),
      Container(
          color: Color.fromARGB(255, 255, 255, 255),
          height: 18.h,
          margin: EdgeInsets.only(left: 48.w, top: 3.h),
          width: 18.w),
      Container(
          height: 18.h,
          margin: EdgeInsets.only(left: 68.w, top: 3.h),
          width: 18.w),
      Container(
          color: Color.fromARGB(255, 255, 255, 255),
          height: 18.h,
          margin: EdgeInsets.only(left: 68.w, top: 3.h),
          width: 18.w),
      Container(
          height: 18.h,
          margin: EdgeInsets.only(left: 88.w, top: 3.h),
          width: 18.w),
      Container(
          color: Color.fromARGB(255, 255, 255, 255),
          height: 18.h,
          margin: EdgeInsets.only(left: 88.w, top: 3.h),
          width: 18.w),
      Container(
          height: 18.h,
          margin: EdgeInsets.only(left: 251.w, top: 3.h),
          width: 18.w),
      Container(
          color: Color.fromARGB(255, 255, 255, 255),
          height: 18.h,
          margin: EdgeInsets.only(left: 251.w, top: 3.h),
          width: 18.w),
      Container(
          child: Text("FIGMA",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 14.sp),
              textAlign: TextAlign.left),
          height: 16.h,
          margin: EdgeInsets.only(left: 8.w, top: 4.h),
          width: 43.w),
      Container(
          height: 18.h,
          margin: EdgeInsets.only(left: 271.w, top: 3.h),
          width: 18.w),
      Container(
          color: Color.fromARGB(255, 8, 7, 58),
          height: 13.85.h,
          margin: EdgeInsets.only(left: 271.28.w, top: 5.25.h),
          width: 17.44.w),
      Container(
          height: 18.h,
          margin: EdgeInsets.only(left: 291.w, top: 3.h),
          width: 18.w),
      Container(
          color: Color.fromARGB(255, 8, 7, 58),
          height: 14.98.h,
          margin: EdgeInsets.only(left: 292.51.w, top: 4.51.h),
          width: 14.98.w),
      Container(
          height: 18.h,
          margin: EdgeInsets.only(left: 311.w, top: 3.h),
          width: 18.w),
      Container(
          color: Color.fromARGB(255, 8, 7, 58),
          height: 14.98.h,
          margin: EdgeInsets.only(left: 316.24.w, top: 4.51.h),
          width: 7.52.w),
      Container(
          child: Image.asset("images/no_tickets_group_319.png"),
          height: 50.h,
          margin: EdgeInsets.only(left: 27.w, top: 640.h),
          width: 320.w),
      Container(
          child: Text("Add ticket",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 16.sp),
              textAlign: TextAlign.center),
          height: 16.h,
          margin: EdgeInsets.only(left: 71.w, top: 657.h),
          width: 231.w)
    ])));
  }
}

