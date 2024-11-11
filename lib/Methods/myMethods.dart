import 'dart:ui';

import 'package:calculator/MyWidgets/tab_button.dart';
import 'package:calculator/MyWidgets/straightline.dart';

myTabButton(String title, bool isSelected) {
  if (isSelected) {
    return MyCalcTabButton(title: title, FW: FontWeight.w700,);
  } else {
    return MyCalcTabButton(title: title, FW: FontWeight.normal);
  }
}

myLine(String direction) {
  return MyCustomStraightLine(direction: direction,);
}