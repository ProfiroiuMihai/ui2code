import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/text_widget.dart';

class Component4 extends StatelessWidget {
  BoxConstraints constraints;

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
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                    Colors.greenAccent,
                    Colors.lightBlue,
                  ])),
              child: Stack(
                children: <Widget>[
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 40, top: 50),
                        width: 1200,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runSpacing: constraints.maxWidth / 10,
                          children: <Widget>[
                            getCard1(),
                            getCard2(),
                            getCard3()
                          ],
                        ),
                      ),
                    ],
                  ),

//                    Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[getCard1(), getCard2(), getCard3()]),
                ],
              ));
        }));
  }

  getCard1() {
    return Container(
      height: 300,
      width: getDimensions(),
      margin: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/images/icon1.png",
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              TextWidget(
                "What we do",
                fontColor: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              TextWidget(
                "Cut off repetitive coding for your within Figma.",
                fontColor: Colors.black,
                fontSize: 18,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  getCard2() {
    return Container(
      height: 300,
      width: getDimensions(),
      margin: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/images/icon2.png",
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              TextWidget(
                "What we do",
                fontColor: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              TextWidget(
                "Generate Flutter code for design assets, images and texts.",
                fontColor: Colors.black,
                fontSize: 18,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  getCard3() {
    return Container(
      height: 300,
      width: getDimensions(),
      margin: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/images/icon3.png",
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              TextWidget(
                "What we do",
                fontColor: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              TextWidget(
                "Speed up your mobile app development process",
                fontColor: Colors.black,
                fontSize: 18,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }


  getDimensions(){
//    if(constraints.maxHeight<constraints.maxWidth*1.1)
//      return constraints.maxWidth / 5;
    return 350;
  }
  getDimensions2(){
//    if(constraints.maxHeight<constraints.maxWidth*1.1)
//      return constraints.maxWidth / 5;
    return 350;
  }
}
