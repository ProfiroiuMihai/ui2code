import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Compo extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return
              Container(
                color: Colors.white,
                child: LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxHeight < constraints.maxWidth || constraints.maxWidth > 900)
                    return Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child:
                              model.registerStepComponent(model.registerStep),
                        ),
                        Flexible(
                          flex: 1,
                          child: OnboardingBackgroundComponent(),
                        ),
                      ],
                    );
                  else
                    return Flexible(
                      child: model.registerStepComponent(model.registerStep),
                    );
                }),
              );
  }
}
