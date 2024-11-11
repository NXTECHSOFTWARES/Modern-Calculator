import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArithmeticButton extends StatelessWidget {
  const ArithmeticButton({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100.w,
      height: 60.h,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 0.5.w,
            color: icon != CommunityMaterialIcons.plus ? const Color.fromRGBO(150, 220, 240, 1.0) : Colors.transparent,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Icon(icon, size: 20.w, color: const Color.fromRGBO(150, 220, 240, 1.0),),
    );
  }
}
