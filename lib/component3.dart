import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/text_widget.dart';

class Component3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            child:
                LayoutBuilder(builder: (context, BoxConstraints constraints) {
              return Container(
                  padding: EdgeInsets.only(
                      left: constraints.maxWidth / 6,
                      right: constraints.maxWidth / 6,
                      top: constraints.maxHeight / 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.grey[200], Colors.grey[100]])),
                  child: Stack(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),
                            ),
                            TextWidget(
                              "We believe in focusing on what matters.",
                              fontColor: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                            ),
                            TextWidget(
                              "It takes three to tango and build a dreamy mobile app in no time: the designer, the developer and UI2Code plugin.\nWe get rid of repetitive coding of simple design assets and endless iterations, while you, the designer and the developer, have your hands on the true challenges of building innovative mobile apps.",
                              fontColor: Colors.black,
                              fontSize: 17,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                            ),
//                            Row(
//                                mainAxisAlignment: MainAxisAlignment.center,
//                                children: <Widget>[
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Container(
                                      alignment: Alignment.topCenter,
//                                      color: Colors.red,
                                      child: Image.asset(
                                        "assets/images/plugin2.1.png",
                                width: double.infinity,
                                      ),
                                    ),
                                  ),
//                                ]),
                          ]),
                    ],
                  ));
            })));
  }
}
