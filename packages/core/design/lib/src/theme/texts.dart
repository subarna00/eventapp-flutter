import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextTheme _basePoppins = GoogleFonts.poppinsTextTheme();

final poppins = _basePoppins.copyWith(
  titleMedium: _basePoppins.titleMedium
      ?.copyWith(fontSize: 17, fontWeight: FontWeight.w600),
  bodyLarge: _basePoppins.titleMedium
      ?.copyWith(fontSize: 17, fontWeight: FontWeight.w400),
  bodySmall: _basePoppins.titleMedium
      ?.copyWith(fontSize: 13, fontWeight: FontWeight.w400),
  bodyMedium: _basePoppins.titleMedium
      ?.copyWith(fontSize: 17, fontWeight: FontWeight.w600),
  headlineSmall: _basePoppins.titleMedium
      ?.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
);
