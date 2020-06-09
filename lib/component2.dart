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

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(builder: (context, constraints) {
        if (true && constraints.maxWidth > 000)
          return Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.red])),
            child: Stack(
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Flexible(
                          flex: 2,
                          child: Image.asset(
                            "assets/images/plugin1.png",
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(width: 900, child: getMainPage()),
                        ),
                      ],
                    ),
                  ],
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
        DefaultTabController(
            length: 4,
            child: TabBar(
              controller: controller,
              labelPadding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: AppColors.primaryLightColor,
              unselectedLabelStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.normal,
                color: AppColors.cardTitle,
              ),
              unselectedLabelColor: AppColors.cardTitle,
              labelStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.bold,
                color: AppColors.primaryLightColor,
              ),
              labelColor: AppColors.primaryLightColor,
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
        Container(
          width: 400,
          height: 300,
          child: TabBarView(
            controller: controller,
            children: <Widget>[
              Container(
                  width: 400,
                  height: 300,
                  child: Image.asset("assets/images/code_flutter.png")),
              Container(
                  width: 400,
                  height: 100,
                  child: Image.asset("assets/images/code_flutter.png")),
              TextWidget(
                "Comming soon",
                fontColor: Colors.white,
              ),
              TextWidget(
                "Comming soon",
                fontColor: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
