import 'package:ai_recipe_generator/utils/extensions.dart';
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
  final Function(String)? onSubmitted;
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
    this.textType, this.onSubmitted
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
      textInputAction: TextInputAction.next,
      onSubmitted:onSubmitted ?? (e){
        FocusScope.of(context).requestFocus();
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: context.resHeight(12), horizontal: context.resHeight(16)),
        hintText: hintText,
        hintStyle: AppTextStyles.hintTextStyle,
        fillColor: AppColors.btnFillColor,
        filled: true,
        prefixIcon: preIcon,
        suffixIcon: suffIcon, // Now accepts any widget
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(context.resRadialSize(10)),
          borderSide: BorderSide(color: AppColors.btnFillColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(context.resRadialSize(10)),
          borderSide: BorderSide(color: AppColors.bgColor,width: context.resWidth(1.5)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(context.resRadialSize(10)),
          borderSide: BorderSide(color: AppColors.btnFillColor),
        ),
      ),
    );
  }
}
