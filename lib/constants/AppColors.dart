import 'package:flutter/material.dart';

class AppColors {
  ///define all your colors here
  static int DEFAULTAPPLICATION = 0;
  static int JRTRANSPORTATION = 1;

  ///by default it is selecting JRTRANSPORTATION
  static int CURRENT_APPLICATION = DEFAULTAPPLICATION;

  ///defaulf app colors
  static Color color1 = Colors.blue;
  static Color color2 = Colors.green;

  changeAppTheme(int selectedColor) {
    CURRENT_APPLICATION = selectedColor;
    setApplicationAsPerTheme();
  }

  static setApplicationAsPerTheme() {
    if (CURRENT_APPLICATION == JRTRANSPORTATION) {
      color1 = Colors.blue;
      color2 = Colors.green;
    } else if (CURRENT_APPLICATION == JRTRANSPORTATION) {
      color1 = Colors.red;
      color2 = Colors.yellow;
    }
  }
}
