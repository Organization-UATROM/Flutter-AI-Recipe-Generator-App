import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? preIcon;
  final Widget? suffIcon;
  final bool obscureText;
  final VoidCallback? onPress;
  final FocusNode? focusNode;
  final bool? enabled;
  final TextInputType? textType;
  final TextEditingController controller;

  CustomTextField({
    required this.hintText,
    required this.controller,
    this.preIcon,
    this.suffIcon,
    this.onPress,
    this.focusNode,
    this.obscureText=false,
    this.enabled=true,
    this.textType
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.greyColor,
      focusNode: focusNode,
      controller: controller,
      keyboardType: textType,
      enabled: enabled,
      obscureText: obscureText ,
      obscuringCharacter: '*',
      style: AppTextStyles.black14w400,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        hintText: hintText,
        hintStyle: AppTextStyles.hintTextStyle,
        fillColor: AppColors.whiteColor,
        filled: true,
        prefixIcon: preIcon,
        suffixIcon: suffIcon, // Now accepts any widget
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.btnFillColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.btnFillColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.btnFillColor),
        ),
      ),
    );
  }
}
