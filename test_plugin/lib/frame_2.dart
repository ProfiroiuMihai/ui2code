import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class Frame_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: SafeArea(
            child: Container(
//                height: 650, width: 379,
              child: Stack(children: <Widget>[
      Container(
          color: Color.fromARGB(255, 255, 255, 255),
          height: 255.h,
          margin: EdgeInsets.only(left: 0.w, top: 0.h),
          width: 136.w),
      Container(
          color: Color.fromARGB(255, 196, 196, 196),
          height: 84.h,
          margin: EdgeInsets.only(left: 42.w, top: 85.h),
          width: 52.w),
      Container(
          child: Text("x\n",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 12.sp),
                textAlign: TextAlign.left),
          height: 29.h,
          margin: EdgeInsets.only(left: 178.w, top: 94.h),
          width: 19.w),
      Container(
        color: Colors.red,
          child: Text(
              "fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
              maxLines: 1,
          ),
          height: 155.h,
          margin: EdgeInsets.only(left: 271.w, top: 152.h),
          width: 143.w),
      Container(
          color: Colors.blueGrey,
          child: Row(
            children: [
              Image.asset("images/frame_1_star_1.png",
                    width: 500, height: 400),
            ],
          ),
          height: 155.h,
          margin: EdgeInsets.only(left: 350, top: 200),
          width: 143.w),
      Container(
          color: Colors.blueGrey,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
            Text("text1"),
            Text("text2"),
            Text("text6"),
            Text("text7"),
            Text("text8"),
            Text("text9"),
          ]),
          height: 600.h,
          margin: EdgeInsets.only(left: 250, top: 600),
          width: 143.w),
    ]),
            )));
  }
}
