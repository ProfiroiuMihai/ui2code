import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'frame_1.dart';
import 'frame_2.dart';
import 'no_tickets.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(height: 650, width: 379);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(debugShowCheckedModeBanner: false, home: No_Tickets());
  }
}
