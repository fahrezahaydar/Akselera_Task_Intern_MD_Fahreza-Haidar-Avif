import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTs {
  AppTs._();

  static TextStyle h2 = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h3 = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h4 = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h5 = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h6 = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.blackText,
  );
  static TextStyle sh1 = TextStyle(
    fontFamily: GoogleFonts.urbanist().fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static TextStyle sh2 = TextStyle(
    fontFamily: GoogleFonts.urbanist().fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.blackSoftText,
  );
  static TextStyle sh3 = TextStyle(
    fontFamily: GoogleFonts.urbanist().fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.blackSoftText,
  );

  static TextStyle p1 = TextStyle(
    fontFamily: GoogleFonts.urbanist().fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle p2 = TextStyle(
    fontFamily: GoogleFonts.urbanist().fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle p3 = TextStyle(
    fontFamily: GoogleFonts.urbanist().fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle l1 = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );
}
