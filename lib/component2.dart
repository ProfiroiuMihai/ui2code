import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/text_widget.dart';

import 'app_colors.dart';

class Component2 extends StatefulWidget {
  @override
  _Component1State createState() => _Component1State();
}

class _Component1State extends State<Component2> with TickerProviderStateMixin {
  TabController controller;

  BoxConstraints constraints;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
        this.constraints=constraints;
        return Container(
          padding: EdgeInsets.only(
            left: constraints.maxWidth / 6,
            right: constraints.maxWidth / 6,
            top: constraints.maxHeight / 16,
            ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [AppColors.primaryRed2, AppColors.primaryRed1])),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  TextWidget(
                    "Simple in use for both, designers and developers. ",
                    fontColor: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  TextWidget(
                    "Our built-in-Figma tool allows you to generate clean Flutter code for core design elements of your choice, images and text. The downloaded source code is a well-documented starting point for developing your mobile app.",
                    fontColor: Colors.white,
                    fontSize: 17,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  (constraints.maxWidth > constraints.maxHeight * 1.5 &&
                          constraints.maxWidth > 900)
                      ? Row(
                          mainAxisSize: MainAxisSize.max,
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                              flex: 2,
                              child: Image.asset(
                                "assets/images/plugin1.png",height: 550,
                              ),
                            ),
                            Flexible(
                              flex: 4,
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: constraints.maxWidth / 16),
                                  width: 900,
                                  child: getTabsWithCode()),
                            ),
                          ],
                        )
                      : Flexible(
                          child: getTabsWithCode(),
                        ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }

  getTabsWithCode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 400,
          margin: EdgeInsets.only(bottom: 20),
          child: DefaultTabController(
              length: 4,
              child: TabBar(
                controller: controller,
                labelPadding: EdgeInsets.all(0),
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: AppColors.primaryLightColor,
                unselectedLabelStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.normal,
                  color: AppColors.white,
                ),
                unselectedLabelColor: AppColors.white,
                labelStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
                labelColor: AppColors.white,
                tabs: [
                  Tab(
                    text: 'Flutter',
                  ),
                  Tab(
                    text: 'Android',
                  ),
                  Tab(
                    text: 'iOS',
                  ),
                  Tab(
                    text: 'React Native',
                  ),
                ],
              )),
        ),
        Container(
          width: 600,
          height: getDimensions(),
          child: TabBarView(
            controller: controller,
            children: <Widget>[
              Container(
                  child: Image.asset("assets/images/code_flutter.png"),
              alignment: Alignment.topLeft,),
              Center(
                child: TextWidget(
                  "Comming soon",
                  fontColor: Colors.white,
                  fontSize: 25,
                ),
              ),
              Center(
                child: TextWidget(
                  "Comming soon",
                  fontColor: Colors.white,
                  fontSize: 25,
                ),
              ),
              Center(
                child: TextWidget(
                  "Comming soon",
                  fontColor: Colors.white,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }



  getDimensions(){
    if(constraints.maxHeight>constraints.maxWidth*1.2)
    return constraints.maxHeight / 2.8;
//    if(constraints.maxHeight>constraints.maxWidth)
      return constraints.maxHeight / 2;
  }
}
