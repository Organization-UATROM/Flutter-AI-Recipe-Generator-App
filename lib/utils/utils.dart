import 'package:ai_recipe_generator/utils/extensions.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_colors.dart';

class Utils{

  static void flushBarSuccessMessage(String msg){
    showFlushbar(
        context: Get.context!,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: Get.context!.resWidth(20),vertical: Get.context!.resHeight(10)),
          padding: EdgeInsets.all(Get.context!.resRadialSize(15)),
          message: msg,
          messageColor: AppColors.whiteColor,
          duration: const Duration(seconds: 3),
          flushbarPosition: FlushbarPosition.TOP,
          backgroundColor: AppColors.greenColor,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          borderRadius: BorderRadius.circular(Get.context!.resRadialSize(12)),
          icon: Icon(Icons.check_circle,size: Get.context!.resRadialSize(20),color: AppColors.whiteColor,),
          // icon: icon,
        )..show(Get.context!)
    );
  }

  static void flushBarErrorMessage(String msg,){
    showFlushbar(
        context: Get.context!,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: Get.context!.resWidth(20),vertical: Get.context!.resHeight(10)),
          padding: EdgeInsets.all(Get.context!.resRadialSize(15)),
          message: msg,
          duration: const Duration(seconds: 3),
          flushbarPosition: FlushbarPosition.TOP,
          backgroundColor: AppColors.redColor,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          messageColor: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(Get.context!.resRadialSize(12)),
          icon: Icon(Icons.error_outline,size: Get.context!.resRadialSize(20),color: AppColors.whiteColor,),
          // icon: icon,
        )..show(Get.context!)
    );
  }

}