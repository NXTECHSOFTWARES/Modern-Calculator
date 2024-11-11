import 'package:calculator/MyWidgets/output_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'reusable_text.dart';
import 'straightline.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> options = [
    MyReusableText(
      text: "RAND",
      color: const Color.fromRGBO(148, 219, 241, 1.0),
      size: 16.sp,
      FW: FontWeight.normal,
      font: 'Playfair Display',
    ),
    MyReusableText(
      text: "DOLLAR",
      color: const Color.fromRGBO(148, 219, 241, 1.0),
      size: 16.sp,
      FW: FontWeight.normal,
      font: 'Playfair Display',
    ),
    MyReusableText(
      text: "NAIRA",
      color: const Color.fromRGBO(148, 219, 241, 1.0),
      size: 16.sp,
      FW: FontWeight.normal,
      font: 'Playfair Display',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 392.w,
          height: 190.h,
          padding: EdgeInsets.only(top: 10.h, left: 30.w, right: 30.w),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.05),
            borderRadius: BorderRadius.circular(20.0.r),
          ),
        ),
        Container(
          width: 392.w,
          height: 190.h,
          padding: EdgeInsets.only(top: 10.h, left: 30.w, right: 30.w),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20.0.r),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton(
                      //menuMaxHeight: 100.h,
                      elevation: 0,
                      isExpanded: false,
                      underline: const MyCustomStraightLine(
                        direction: 'straight',
                      ),
                      dropdownColor: Colors.transparent,
                      icon: Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 28.w,
                        color: const Color.fromRGBO(29, 89, 107, 1.0),
                      ),
                        items: options.map((e) => DropdownMenuItem( child: e,)).toList(),
                      //  [
                      //   DropdownMenuItem(
                      //     child: MyReusableText(
                      //       text: "RAND",
                      //       color: const Color.fromRGBO(148, 219, 241, 1.0),
                      //       size: 16.sp,
                      //       FW: FontWeight.normal,
                      //       font: 'Playfair Display',
                      //     ),
                      //   ),
                      // ],
                      onChanged: (context) {}),
                  DropdownButton(
                      elevation: 0,
                      underline: const MyCustomStraightLine(
                        direction: 'straight',
                      ),
                     // menuMaxHeight: 100.h,
                      dropdownColor: Colors.transparent,
                      icon: Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 28.w,
                        color: const Color.fromRGBO(29, 89, 107, 1.0),
                      ),
                      items: [
                        DropdownMenuItem(
                          child: MyReusableText(
                            text: "US Dollars".toUpperCase(),
                            color: const Color.fromRGBO(148, 219, 241, 1.0),
                            size: 16.sp,
                            FW: FontWeight.normal,
                            font: 'Playfair Display',
                          ),
                        ),
                      ],
                      onChanged: (context) {})
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              const CustomOutputScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
