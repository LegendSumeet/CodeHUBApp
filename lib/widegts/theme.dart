import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme{
  static ThemeData lighttheme(BuildContext context) => ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: const AppBarTheme(color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      
      )
      );
      
static ThemeData darktheme(BuildContext context) => ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: const AppBarTheme(color: Colors.black,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      
      )
      );
      
      
    
      }