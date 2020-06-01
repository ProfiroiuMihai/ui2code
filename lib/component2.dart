import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Component1 extends StatefulWidget {
  @override
  _Component1State createState() => _Component1State();
}

class _Component1State extends State<Component1> {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: LayoutBuilder(builder: (context, constraints) {
            if (true &&
                constraints.maxWidth > 000)
              return Container(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      flex: 9,
                      child: Container(width: 900,child:getMainPage()),
                    ),
                    Flexible(
                      flex: 8,
                      child: Image.asset("assets/images/frameworks.png",width: constraints.maxWidth/2,),
                    ),
                  ],
                ),
              );
            else
              return Flexible(
                child: getMainPage(),
              );
          }),
    );
  }

  getMainPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/logo.png"),
        Text(
          "UiToCode is a web-based tool that generates for you  production-ready code from Figma designs",
          style: TextStyle(fontSize: 40),
        ),
        Text(
          "COMING SOON",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}