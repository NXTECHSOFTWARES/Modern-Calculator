import 'dart:ui';

import 'package:calculator/Methods/myMethods.dart';
import 'package:calculator/MyWidgets/answer_output_screen.dart';
import 'package:calculator/MyWidgets/calc_button.dart';
import 'package:calculator/MyWidgets/calc_button_2.dart';
import 'package:calculator/MyWidgets/reusable_text.dart';
import 'package:calculator/MyWidgets/straightline.dart';
import 'package:calculator/Views/BIM.dart';
import 'package:calculator/Views/normal_calculator.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'currency.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  bool selectedNormal = true;
  bool selectedCurrency = false;
  bool selectedIBM = false;

  List listOf = [
    NormalCalculator(),
    CurrencyPage(),
    IBM()
  ];


  selectedTabButton(int selectedIndex) {
    return listOf[selectedIndex];
  }

  @override
  Widget build(BuildContext context) {

    int selectedIndex = 1;

    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: const [
                Color.fromRGBO(0, 56, 73, 1.0),
                Color.fromRGBO(0, 6, 9, 1.0),
              ],
              radius: 1.r,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 0,
                ),
                /**
                 * App Name
                 */
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 20.0.w),
                      child: const MyReusableText(
                          text: "XCALCULATOR",
                          color: Color.fromRGBO(33, 49, 54, 1.0),
                          size: 18,
                          FW: FontWeight.normal,
                          font: 'Playfair Display')),
                ),
                SizedBox(
                  height: 40.h,
                ),
                /**
                 * Tab buttons
                 */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedNormal = true;
                          selectedCurrency = false;
                          selectedIBM = false;
                          selectedIndex = 0;
                        });
                      },
                      child: myTabButton("Normal", selectedNormal),
                    ),
                    myLine("straight"),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCurrency = true;
                          selectedNormal = false;
                          selectedIBM = false;
                          selectedIndex = 2;
                        });
                      },
                      child: myTabButton("Currency", selectedCurrency),
                    ),
                    myLine("straight"),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCurrency = false;
                          selectedNormal = false;
                          selectedIBM = true;
                          selectedIndex = 1;
                        });
                      },
                      child: myTabButton("IBM", selectedIBM),
                    ),
                  ],
                ),
                /**
                 *
                 */
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myLine(""),
                      myLine(""),
                    ],
                  ),
                ),
                Container(
                  width: 392.w,
                  height: 190.h,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.05),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: selectedTabButton(selectedIndex),
                ),
                Container(
                  width: 312.w,
                  height: 32.h,
                  margin: EdgeInsets.symmetric(vertical: 15.h),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 32, 42, 1.0),
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(
                      width: 1.0.w,
                      color: const Color.fromRGBO(0, 50, 70, 1.0),
                      style: BorderStyle.solid
                    )
                  ),
                ),
                Stack(
                  children: [
                    Stack(
                      children: [
                        /**
                         * Answer screen
                         */
                        const Align(
                            alignment: Alignment.center,
                            child: AnswerOutputScreen()),
                        /**
                         * ALL CLEAR BUTTON
                         */
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: (){
                              print("All Clear button Clicked!");
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 115.w,
                                  height: 120.h,
                                  margin: EdgeInsets.only(top: 20.h),
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(0, 50, 70, 1.0),
                                      border: Border(
                                        top: BorderSide(
                                          width: 2.0.w,
                                          color: const Color.fromRGBO(30, 50, 55, 1.0),
                                          style: BorderStyle.solid),
                                      bottom: BorderSide(
                                          width: 2.0.w,
                                          color: const Color.fromRGBO(30, 50, 55, 1.0),
                                          style: BorderStyle.solid),
                                      right: BorderSide(
                                          width: 2.0.w,
                                          color: const Color.fromRGBO(30, 50, 55, 1.0),
                                          style: BorderStyle.solid),),

                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.r),
                                        bottomRight: Radius.circular(20.r),
                                      )),
                                ),
                                Container(
                                  width: 115.w,
                                  height: 120.h,
                                  margin: EdgeInsets.only(top: 20.h),
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(0, 0, 0, 0.4),
                                      border: Border(
                                        top: BorderSide(
                                            width: 2.0.w,
                                            color: const Color.fromRGBO(30, 50, 55, 1.0),
                                            style: BorderStyle.solid),
                                        bottom: BorderSide(
                                            width: 2.0.w,
                                            color: const Color.fromRGBO(30, 50, 55, 1.0),
                                            style: BorderStyle.solid),
                                        right: BorderSide(
                                            width: 2.0.w,
                                            color: const Color.fromRGBO(30, 50, 55, 1.0),
                                            style: BorderStyle.solid),),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.r),
                                        bottomRight: Radius.circular(20.r),
                                      )),
                                  child: const Center(
                                    child: MyReusableText(
                                        text: "AC",
                                        color: Color.fromRGBO(60, 80, 87, 1.0),
                                        size: 28,
                                        FW: FontWeight.bold,
                                        font: 'Playfair Display'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    /**
                     * DELETE BUTTON
                     */
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){
                          print("Delete button clicked!");
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 115.w,
                              height: 120.h,
                              margin: EdgeInsets.only(top: 20.h),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(0, 50, 70, 1.0),
                                  border: Border(
                                    top: BorderSide(
                                        width: 2.0.w,
                                        color: const Color.fromRGBO(30, 50, 55, 1.0),
                                        style: BorderStyle.solid),
                                    bottom: BorderSide(
                                        width: 2.0.w,
                                        color: const Color.fromRGBO(30, 50, 55, 1.0),
                                        style: BorderStyle.solid),
                                    left: BorderSide(
                                        width: 2.0.w,
                                        color: const Color.fromRGBO(30, 50, 55, 1.0),
                                        style: BorderStyle.solid),),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.r),
                                    bottomLeft: Radius.circular(20.r),
                                  )),
                            ),
                            Container(
                              width: 115.w,
                              height: 120.h,
                              margin: EdgeInsets.only(top: 20.h),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                                  border: Border(
                                    top: BorderSide(
                                        width: 2.0.w,
                                        color: const Color.fromRGBO(30, 50, 55, 1.0),
                                        style: BorderStyle.solid),
                                    bottom: BorderSide(
                                        width: 2.0.w,
                                        color: const Color.fromRGBO(30, 50, 55, 1.0),
                                        style: BorderStyle.solid),
                                    left: BorderSide(
                                        width: 2.0.w,
                                        color: const Color.fromRGBO(30, 50, 55, 1.0),
                                        style: BorderStyle.solid),),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.r),
                                    bottomLeft: Radius.circular(20.r),
                                  )),
                              child: const Center(
                                child: MyReusableText(
                                    text: "DEL",
                                    color: Color.fromRGBO(60, 80, 87, 1.0),
                                    size: 28,
                                    FW: FontWeight.bold,
                                    font: 'Playfair Display'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                /**
                 * Top Calculator Buttons
                 */
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyCustomButton(topNumber: "1", bottomNumber: "4"),
                      MyCustomButton(topNumber: "2", bottomNumber: "5"),
                      MyCustomButton(topNumber: "3", bottomNumber: "6"),
                    ],
                  ),
                ),
                /**
                 *  Bottom Calculator Buttons
                 */
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 15.h),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyCustomButton(topNumber: "7", bottomNumber: ","),
                      MyCustomButton(topNumber: "8", bottomNumber: "0"),
                      MyCustomButton(topNumber: "9", bottomNumber: "MOD"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80.h,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        width: 0.5.w,
                        color: const Color.fromRGBO(23, 120, 150, 1.0),
                        style: BorderStyle.solid,
                      )
                    )
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     ArithmeticButton(icon: CommunityMaterialIcons.minus),
                     ArithmeticButton(icon: Icons.close),
                     ArithmeticButton(icon: CommunityMaterialIcons.division),
                     ArithmeticButton(icon: CommunityMaterialIcons.plus),

                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
