import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/text_widget.dart';

class Component3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        color: Colors.white,
        child: Container(
          width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.grey, Colors.grey[400]])),
            child: Stack(
              children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                  TextWidget(
                  "#uitocode",
                  fontColor: Colors.white,
                ),
                TextWidget(
                  "Generate clean, readable code",
                  fontColor: Colors.white,
                ),
                  Image.asset(
                    "assets/images/plugin2.png",
                  ),
                ]),
              ],
            )]))));
  }


}
