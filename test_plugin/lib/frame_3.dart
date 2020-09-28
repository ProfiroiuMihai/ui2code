import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class Frame_3 extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        ScreenUtil.init(height: 674, width: 1134);
        
        return Scaffold(body: SafeArea(child: Stack(children: <Widget>[Container(color: Color.fromARGB(255, 133, 131, 131), height: 674.h, margin: EdgeInsets.only(left: 0.w, top: 0.h), width: 1134.w), Container(child: Text("213\n", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 12.sp), textAlign: TextAlign.left), height: 31.h, margin: EdgeInsets.only(left: 159.w, top: 99.h), width: 61.w), Container(color: Color.fromARGB(255, 255, 0, 0), height: 89.h, margin: EdgeInsets.only(left: 300.w, top: 41.h), width: 216.w), Container(height: 27.h, margin: EdgeInsets.only(left: 372.w, top: 145.h), width: 72.w), Container(color: Color.fromARGB(255, 43, 9, 255), height: 27.h, margin: EdgeInsets.only(left: 372.w, top: 145.h), width: 72.w)])));
        
    }
    
}
