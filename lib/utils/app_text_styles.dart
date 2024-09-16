import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final scaleFactor = Get.context!.textScaleFactor;

  static TextStyle white50w500 = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontSize: 50 * scaleFactor,
      fontWeight: FontWeight.w700,
      height: 1.5);

  static TextStyle white16w300 = GoogleFonts.poppins().copyWith(
      color: AppColors.whiteColor,
      fontSize: 16 * scaleFactor,
      fontWeight: FontWeight.w300);

  static TextStyle black14w400 = GoogleFonts.poppins().copyWith(
      color: AppColors.bgColor,
      fontSize: 14 * scaleFactor,
      fontWeight: FontWeight.w400);

  static TextStyle blue24w500 = GoogleFonts.poppins().copyWith(
      color: AppColors.bgColor,
      fontSize: 24 * scaleFactor,
      fontWeight: FontWeight.w500);

  static TextStyle grey12w400 = GoogleFonts.poppins().copyWith(
      color: AppColors.greyColor,
      fontSize: 12 * scaleFactor,
      fontWeight: FontWeight.w400);

  static TextStyle blue14w400 = GoogleFonts.poppins().copyWith(
      color: AppColors.bgColor,
      fontSize: 14 * scaleFactor,
      fontWeight: FontWeight.w400);

  static TextStyle hintTextStyle=  GoogleFonts.poppins().copyWith(
      color: AppColors.greyColor,fontSize: 10 * scaleFactor,
      fontWeight: FontWeight.w300);

}
