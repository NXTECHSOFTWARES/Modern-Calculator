import 'package:calculator/MyWidgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomOutputScreen extends StatefulWidget {
  const CustomOutputScreen({super.key});

  @override
  State<CustomOutputScreen> createState() => _CustomOutputScreenState();
}

class _CustomOutputScreenState extends State<CustomOutputScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 312.w,
          height: 85.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: const Color.fromRGBO(0, 0, 0, 0.4),
              border: Border.all(
                  width: 1.0.w,
                  color: const Color.fromRGBO(101, 192, 220, 1.0),
                  style: BorderStyle.solid
              )
          ),
        ),
        Container(
          width: 312.w,
          height: 85.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.transparent,
              border: Border.all(
                  width: 1.0.w,
                  color: const Color.fromRGBO(101, 192, 220, 1.0),
                  style: BorderStyle.solid)),
          child:
          Stack(
            children: [
              Container(
                  width: 15.w,
                  height: 15.h,
                  margin: EdgeInsets.only(left: 20.w, top: 30.h),
                  child: Icon(
                    FontAwesomeIcons.dollarSign,
                    color: const Color.fromRGBO(30, 90, 110, 1.0),
                    size: 20.w,
                  )),
              Expanded(
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 0.w),
                    padding: EdgeInsets.only(left: 40.w, right: 40.w),
                    child: const Center(
                      child: MyReusableText(
                          text: "55,55",
                          color: Color.fromRGBO(73, 140, 160, 1.0),
                          size: 20,
                          FW: FontWeight.normal,
                          font: 'Domine'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
