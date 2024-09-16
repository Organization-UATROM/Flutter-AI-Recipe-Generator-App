import 'package:ai_recipe_generator/ui/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

onWillPopDialog(){
  return Get.defaultDialog(
    title: 'Exit App',
    titleStyle: AppTextStyles.blue14w400.copyWith(fontSize: 16,fontWeight: FontWeight.w500),
    titlePadding: const EdgeInsets.only(top: 20,bottom: 4,right: 100,left: 100),
    content: const Text('Are you sure you want to exit?'),
    contentPadding: const EdgeInsets.only(bottom: 10,right: 30,left: 30,top: 4),
    backgroundColor: AppColors.white2Color,
    confirm: Padding(
      padding: const EdgeInsets.only(top:10.0,bottom: 20,),
      child: InkWell(
        onTap: (){
          // LocalStorage.remove(LocalStorageKeys.token);
          // LocalStorage.remove(LocalStorageKeys.role);
          Get.offAll(const LoginScreen());
        },
        child: Container(
          width: 94,
          height: 31,
          decoration: BoxDecoration(
            color: AppColors.bgColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
              child: Text('Exit',style: AppTextStyles.white16w300.copyWith(
                  fontSize: 10*AppTextStyles.scaleFactor,fontWeight: FontWeight.w400),)),
        ),
      ),
    ),
    cancel: Padding(
      padding: const EdgeInsets.only(top:10.0,bottom: 20,),
      child: InkWell(
        onTap: (){
          Get.back();
        },
        child: Container(
            width: 94,
            height: 31,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: AppColors.bgColor)
            ),
            child: Center(
                child: Text('Cancel',style:AppTextStyles.white16w300.copyWith(
                    fontSize: 10*AppTextStyles.scaleFactor,fontWeight: FontWeight.w400,color: AppColors.bgColor),))),
      ),
    ),

  );

}
