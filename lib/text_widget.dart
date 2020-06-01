import 'package:flutter/material.dart';

import 'app_colors.dart';


enum CustomTextStyles{
  cardTitle,
  notificationTitle,
  notificationDate,
  boxDescription,
  boxTitle,
  buttonText,
  genericDescription,
  circleTitle,
  genericTitle,
}

class TextWidget extends StatelessWidget {

  String text;
  CustomTextStyles style;
  double fontSize;
  FontWeight fontWeight;
  Color fontColor;
  String fontFamily;
  FontStyle fontStyle;
  double letterSpacing;
  TextAlign textAlign;
  int maxLines;


  TextWidget(this.text,
      {this.style,
        this.fontSize,
        this.fontStyle = FontStyle.normal,
        this.fontFamily = 'Nunito Sans',
        this.fontWeight = FontWeight.normal,
        this.fontColor = AppColors.cardTitle,
        this.letterSpacing = 0.0,
        this.textAlign = TextAlign.start,
        this.maxLines = 100,
      }) {
    getStyle();
  }

  getStyle() {
    switch(style) {
      case CustomTextStyles.cardTitle:
        fontSize = 18;
        fontWeight = FontWeight.normal;
        fontColor = AppColors.cardTitle;
        break;
      case CustomTextStyles.notificationTitle:
        fontSize = 15;
        fontWeight = FontWeight.w600;
        fontColor = AppColors.notificationTitle;
        break;
      case CustomTextStyles.notificationDate:
        fontSize = 13;
        fontWeight = FontWeight.w600;
        fontColor = AppColors.notificationDate;
        break;
      case CustomTextStyles.boxDescription:
        fontSize = 14;
        fontWeight = FontWeight.normal;
        fontColor = AppColors.cardTitle;
        break;
      case CustomTextStyles.boxTitle:
        fontSize = 44;
        fontWeight = FontWeight.w200;
        fontColor = AppColors.notificationTitle;
        break;
      case CustomTextStyles.buttonText:
        fontSize = 14;
        fontWeight = FontWeight.bold;
        break;
      case CustomTextStyles.genericDescription:
        fontSize = 14;
        fontColor = AppColors.balanceDescription;
        break;
      case CustomTextStyles.circleTitle:
        fontSize = 44;
        fontColor = AppColors.notificationTitle;
        fontWeight = FontWeight.w200;
        break;
      case CustomTextStyles.genericTitle:
        fontSize = 26;
        fontColor = AppColors.notificationTitle;
        fontWeight = FontWeight.w300;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 50,
      textAlign: this.textAlign,
      style: TextStyle(
        fontSize: this.fontSize,
        fontFamily: this.fontFamily,
        fontWeight: this.fontWeight,
        fontStyle: this.fontStyle,
        color: this.fontColor,
        letterSpacing: this.letterSpacing,
      ),
    );
  }

}