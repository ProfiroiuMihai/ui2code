import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/component3.dart';

import 'component1.dart';
import 'component2.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: SingleChildScrollView(
              child: Stack(children: [
            Column(
              children: <Widget>[
                ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 450),
                    child: Component1()),
                ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 500),
                    child: Component2()),
                ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 600),
                    child: Component3()),
              ],
            ),
          ])),
        ),
      ),
    );
  }


}
