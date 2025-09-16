import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  TextStyle hintTextStyle(Color color) {
    return GoogleFonts.mulish(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  TextStyle appBarTitle500TextStyle(Color color) {
    return GoogleFonts.mulish(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  TextStyle titleTextStyle(Color color) {
    return GoogleFonts.mulish(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  TextStyle regular14TextStyle(Color color) {
    return GoogleFonts.mulish(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  TextStyle regular12TextStyle(Color color) {
    return GoogleFonts.mulish(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  TextStyle semiBold16TextStyle(Color color) {
    return GoogleFonts.mulish(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  TextStyle subTitle600ColorTextStyle(Color color) {
    return GoogleFonts.mulish(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  TextStyle tag600ColorTextStyle(Color color) {
    return GoogleFonts.mulish(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  TextStyle buttonSmallSubTitle(Color color) {
    return GoogleFonts.mulish(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  TextStyle address600ColorTextStyle(Color color) {
    return GoogleFonts.mulish(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }
}
