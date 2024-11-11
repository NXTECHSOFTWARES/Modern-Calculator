import 'package:calculator/MyWidgets/reusable_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnswerOutputScreen extends StatefulWidget {
  const AnswerOutputScreen({super.key});

  @override
  State<AnswerOutputScreen> createState() => _AnswerOutputScreenState();
}

class _AnswerOutputScreenState extends State<AnswerOutputScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 270.w,
          height: 160.h,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 0.5),
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                  width: 1.0.w,
                  color: const Color.fromRGBO(23, 120, 150, 1.0),
                  style: BorderStyle.solid)),
        ),
        Container(
          width: 270.w,
          height: 160.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              width: 1.0.w,
              color: const Color.fromRGBO(23, 120, 150, 1.0),
              style: BorderStyle.solid,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Column(
              children: [
                Icon(
                 CommunityMaterialIcons.calculator,
                  color: const Color.fromRGBO(30, 90, 107, 1.0),
                  size: 25.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                const MyReusableText(
                    text: "Answer",
                    color: Color.fromRGBO(140, 215, 240, 1.0),
                    size: 10,
                    FW: FontWeight.normal,
                    font: 'Playfair Display'),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  width: 120.w,
                  height: 1.h,
                  color: const Color.fromRGBO(0, 50, 70, 1.0),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: 160.w,
                  child: const Center(
                    child: MyReusableText(
                        text: "55",
                        color: Color.fromRGBO(30, 145, 180, 1.0),
                        size: 24,
                        FW: FontWeight.normal,
                        font: 'Domine'),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
