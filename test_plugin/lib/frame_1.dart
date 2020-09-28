import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class Frame_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(height: 650, width: 379);

    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 650.h,
              margin: EdgeInsets.only(left: 0.w, top: 0.h),
              width: 379.w),
          Container(
              child: Image.asset("images/frame_1_rectangle_2.png"),
              height: 145.h,
              margin: EdgeInsets.only(left: 104.5.w, top: 54.h),
              width: 136.w),
          Container(
              height: 112.h,
              margin: EdgeInsets.only(left: 87.w, top: 145.h),
              width: 173.w),
          Container(
              color: Color.fromARGB(0, 20, 100, 255),
              height: 32.h,
              margin: EdgeInsets.only(left: 221.w, top: 225.h),
              width: 39.w),
          Container(
              child: Text("f",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 12.sp),
                  textAlign: TextAlign.left),
              height: 14.h,
              margin: EdgeInsets.only(left: 87.w, top: 145.h),
              width: 5.w),
          Container(
              height: 91.h,
              margin: EdgeInsets.only(left: 287.w, top: 20.h),
              width: 72.w),
          Container(
              color: Color.fromARGB(255, 255, 0, 0),
              height: 91.h,
              margin: EdgeInsets.only(left: 287.w, top: 20.h),
              width: 72.w),
          Container(
              child: Text("top left",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 12.sp),
                  textAlign: TextAlign.left),
              height: 28.h,
              margin: EdgeInsets.only(left: 19.w, top: 20.h),
              width: 140.w),
          Container(
              height: 22.h,
              margin: EdgeInsets.only(left: 89.w, top: 28.h),
              width: 61.w),
          Container(
              child: Text("1231\n",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 12.sp),
                  textAlign: TextAlign.left),
              height: 22.h,
              margin: EdgeInsets.only(left: 89.w, top: 28.h),
              width: 61.w),
          Container(
              child: Text("text nou\n",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 71, 255), fontSize: 12.sp),
                  textAlign: TextAlign.left),
              height: 15.h,
              margin: EdgeInsets.only(left: 39.w, top: 270.h),
              width: 111.w),
          Container(
              color: Color.fromARGB(255, 255, 17, 17),
              height: 25.h,
              margin: EdgeInsets.only(left: 37.w, top: 245.h),
              width: 126.w),
          Container(
              child: Text("x\n",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 12.sp),
                  textAlign: TextAlign.left),
              height: 29.h,
              margin: EdgeInsets.only(left: 178.w, top: 94.h),
              width: 19.w),
          Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Text(
                    "fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
                    maxLines: 1,
                  ),
                ],
              ),
              height: 155.h,
              margin: EdgeInsets.only(left: 271.w, top: 152.h),
              width: 143.w),
          Container(
              child: Row(
                children: [
                  Image.asset("images/frame_1_star_1.png",
                      width: 250.w, height: 250.h),
                ],
              ),
              height: 155.h,
              margin: EdgeInsets.only(left: 270.w, top: 200),
              width: 143.w),
          Container(
              child: Image.asset("images/frame_1_vector_1.png"),
              height: 73.26.h,
              margin: EdgeInsets.only(left: 76.w, top: 430.h),
              width: 86.73.w),
          Container(
              color: Color.fromARGB(255, 4, 255, 44),
              height: 59.h,
              margin: EdgeInsets.only(left: 193.w, top: 193.h),
              width: 94.w),
          Container(
              child: Text("sadasd",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 12.sp),
                  textAlign: TextAlign.left),
              height: 22.h,
              margin: EdgeInsets.only(left: 193.w, top: 193.h),
              width: 44.w),
          Container(
              child: Text("bottom left",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 12.sp),
                  textAlign: TextAlign.left),
              height: 18.h,
              margin: EdgeInsets.only(left: 13.w, top: 615.h),
              width: 91.w),
          Container(
              child: Text("bottom right",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 12.sp),
                  textAlign: TextAlign.left),
              height: 26.h,
              margin: EdgeInsets.only(left: 279.w, top: 611.h),
              width: 80.w),
          Container(
              child: Text("top right",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 12.sp),
                  textAlign: TextAlign.left),
              height: 12.h,
              margin: EdgeInsets.only(left: 311.w, top: 12.h),
              width: 51.w)
        ]),
      ),
    ));
  }
}
