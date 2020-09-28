import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/text_widget.dart';

import 'app_colors.dart';

class Component6 extends StatelessWidget {
  BoxConstraints constraints;
  TextEditingController controller =
  TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
          this.constraints = constraints;
          return Container(
              padding: EdgeInsets.only(
                left: constraints.maxWidth / 6,
                right: constraints.maxWidth / 6,
                  top: constraints.maxHeight / 14
              ),
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        TextWidget(
                          "Join our crew of early adopters",
                          fontColor: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
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
                                flex: 3,
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
                                          "Get notified",
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
//                                ]),
                      ]),
                ],
              ));
        }));
  }




  getDimensions(){
    if(constraints.maxHeight<constraints.maxWidth*1.1)
      return constraints.maxWidth / 5.7;
    return 400;
  }

}
