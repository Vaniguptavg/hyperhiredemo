import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///
/// Created by Varnica Gupta on 27/02/25
///

class CustomText extends StatelessWidget {
  final String title;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final TextAlign? align;
  final bool strike;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool softWrap;
  final String font;

  const CustomText({
    required this.title,
    this.size = 14.0,
    this.weight = FontWeight.normal,
    this.color = Colors.black,
    this.align = TextAlign.center,
    this.strike = false,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
    this.font = 'Noto Sans KR',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.getFont(
          font,
          textStyle: TextStyle(
            color: color,
            fontSize: size,
            fontWeight: weight,
          ),
        ),
        maxLines: maxLines,
        textAlign: align,
        overflow: overflow,
        softWrap: softWrap);
  }
}
