import 'package:calculator/MyWidgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCalcTabButton extends StatefulWidget {
  const MyCalcTabButton({super.key, required this.title, required this.FW});

  final FontWeight FW;
  final String title;

  @override
  State<MyCalcTabButton> createState() => _MyCalcTabButtonState();
}

class _MyCalcTabButtonState extends State<MyCalcTabButton> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          width: 100.w,
          height: 35.h,
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color.fromRGBO(0, 56, 73, 1.0),
                Color.fromRGBO(0, 50, 67, 1.0),
              ],
              ),
              borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
              child: MyReusableText(
                  text: widget.title,
                  color: const Color.fromRGBO(73, 140, 159, 1.0),
                  size: 12,
                  FW: widget.FW, font: 'Playfair Display',)
          ),
        ),
        widget.FW != FontWeight.bold ? Container(
          width: 100.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
              child: MyReusableText(
                text: widget.title,
                color: const Color.fromRGBO(73, 140, 159, 1.0),
                size: 12,
                FW: widget.FW, font: 'Playfair Display',)
          ),
        ): Container(),
      ],
    );
  }
}
