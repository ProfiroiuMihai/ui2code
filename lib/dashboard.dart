import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/component3.dart';

import 'component1.dart';
import 'component2.dart';
import 'component4.dart';
import 'component5.dart';

class DashBoardScreen extends StatelessWidget {
  BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: LayoutBuilder(
            builder: (context, BoxConstraints constraints) {
              this.constraints = constraints;
              return Container(
                child: SingleChildScrollView(
                    child: Stack(children: [
                  Column(
                    children: <Widget>[
//                      Component1(),
//                      Component2(),
//                      Component3(),
//                      Component4(),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 850,minHeight: 600),
                          child: Component1()),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 750),
                          child: Component2()),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: getDimensions()),
                          child: Component3()),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 400),
                          child: Component4()),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 300),
                          child: Component5()),
                    ],
                  ),
                ])),
              );
            },
          ),
        ));
  }

  getDimensions() {
    if (constraints.maxHeight > constraints.maxWidth * 1.1)
      return constraints.maxWidth *1.4;
//    if(constraints.maxHeight>constraints.maxWidth)
    return constraints.maxHeight * 1.1;
  }
}
