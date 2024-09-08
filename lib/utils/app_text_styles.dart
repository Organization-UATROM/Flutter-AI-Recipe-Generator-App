import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static TextStyle white50w500 = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontSize: 50,
      fontWeight: FontWeight.w700,
      height: 1.5);

  static TextStyle white16w300 = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontSize: 16,
      fontWeight: FontWeight.w300
  );

}
