import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomStraightLine extends StatelessWidget {
  const MyCustomStraightLine({super.key, required this.direction});

  final String direction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: direction == "straight" ? 36.w : 1.w,
      height: direction == "straight" ? 2.h : 20.h,
      color: direction == "straight"
          ? const Color.fromRGBO(0, 56, 73, 1.0)
          : const Color.fromRGBO(28, 49, 55, 1.0),
    );
  }
}
