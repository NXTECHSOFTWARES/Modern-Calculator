import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'reusable_text.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({super.key, required this.topNumber, required this.bottomNumber});

  final String topNumber;
  final String bottomNumber;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 110.w,
          height: 100.h,
          decoration: BoxDecoration(
            // color: const Color.fromRGBO(255, 255, 255, 1.0),
              border: Border.all(
                  width: 1.0.w,
                  color: const Color.fromRGBO(90, 140, 155, 1.0),
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(20.r)),
        ),
        Container(
          width: 110.w,
          height: 100.h,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.1),
              border: Border.all(
                  width: 1.0.w,
                  color:
                  const Color.fromRGBO(90, 140, 155, 1.0),
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(20.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyReusableText(
                  text: topNumber,
                  color: const Color.fromRGBO(90, 140, 155, 1.0),
                  size: 20,
                  FW: FontWeight.normal,
                  font: 'Domine'),
              Container(
                width: 100.w,
                height: 1.h,
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                color: const Color.fromRGBO(0, 30, 40, 1.0),
              ),
              MyReusableText(
                  text: bottomNumber,
                  color: const Color.fromRGBO(90, 140, 155, 1.0),
                  size: 20,
                  FW: bottomNumber == "MOD" ? FontWeight.bold : FontWeight.normal,
                  font: 'Domine'),
            ],
          ),
        ),
      ],
    );
  }
}
