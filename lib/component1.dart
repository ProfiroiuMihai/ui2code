import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/text_widget.dart';

import 'app_colors.dart';

class Component1 extends StatelessWidget {
  TextEditingController controller =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          padding: EdgeInsets.only(
              top: constraints.maxHeight / 8,
            left: constraints.maxWidth / 6,
            right: constraints.maxWidth / 6,),
          width: double.infinity,
          child: (constraints.maxHeight < constraints.maxWidth*1.5 &&
                  constraints.maxWidth > 900)
              ? Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      flex: 9,
                      child: Container(width: 800,
                          margin: EdgeInsets.only(right: constraints.maxWidth / 16),child: getMainPage()),
                    ),
                    Flexible(
                      flex: 8,
                      child: Image.asset(
                        "assets/images/frameworks.png",
                        width: constraints.maxWidth / 2,
                      ),
                    ),
                  ],
                )
              : Flexible(
                  child: getMainPage(),
                ),
        );
      }),
    ));
  }

  getMainPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/logo.png",
          height: 70,
        ),
        Padding(
          padding: EdgeInsets.all(15),
        ),
        Text(
          "Automate what’s possible, code the impossible.",
          style: TextStyle(fontSize: 35),
        ),
        Padding(
          padding: EdgeInsets.all(8),
        ),
        Text(
          "UI2Code plugin makes the design-to-code process work like a charm. Use it to generate clean well-documented code out of Figma design, what’s left is for you to bring it to perfection.",
          style: TextStyle(fontSize: 17),
        ),
        Padding(
          padding: EdgeInsets.all(8),
        ),
        Text(
          "COMING SOON",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
        ),
        Container(
          color: Colors.grey[200],
          width: 99999,
          height: 75,
          child: Row(
            children: [
              Expanded(
                flex: 8,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextFormField(
                    decoration: new InputDecoration.collapsed(
                      hintText: 'Enter your email',
                    ),
                    controller: controller,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: FlatButton(
                  onPressed: () {
                    Firestore.instance
                        .collection('email')
                        .add({'email': controller.text}).then((_) {});
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            AppColors.primaryGreen1,
                            AppColors.primaryGreen2
                          ]),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextWidget(
                          "Be the first to try",
                          textAlign: TextAlign.center,
                          fontColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
