import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyReusableText extends StatelessWidget {
  const MyReusableText(
      {super.key,
      required this.text,
      required this.color,
      required this.size,
      required this.FW, required this.font});

  final String text;
  final Color color;
  final double size;
  final FontWeight FW;
  final String font;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        font,
        color: color,
        fontSize: size.sp,
        fontWeight: FW,
      ),
    );
  }
}
