import 'package:calculator/MyWidgets/main_screen.dart';
import 'package:calculator/MyWidgets/output_screen.dart';
import 'package:calculator/MyWidgets/reusable_text.dart';
import 'package:calculator/MyWidgets/straightline.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({super.key});

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}
