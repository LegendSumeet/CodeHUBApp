import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darktheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));

  static Color creamcolor = const Color(0xfff5f5f5);
  static Color darkbluishcolor = const Color(0xff403b58);
  static Color darkcreamcolor = Vx.gray900;
  static Color darkbluecolor = const Color(0x002B63D9);
  static Color hello = const Color(0xFF0C023F);
  static Color darkblue = const Color.fromRGBO(31, 31, 57, 1);
}


