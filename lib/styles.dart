import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xFF084749);
const secondaryColor = Color(0xFF0d7377);
const ternaryColor = Color(0xFF129fa5);
const neutralColor = Color(0xFF333333);
abstract class Styles {
  static final text = GoogleFonts.poppins();
  static final textPrimary = Styles.text.copyWith(color: primaryColor);
  static final textHeadingStyle = Styles.text
      .copyWith(color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold);
  static final textLabel = Styles.text.copyWith(
    color: neutralColor, fontSize: 16
  );
  static final textBodyHeadingStyle = Styles.text
      .copyWith(color: primaryColor, fontSize: 24, fontWeight: FontWeight.bold);
}
