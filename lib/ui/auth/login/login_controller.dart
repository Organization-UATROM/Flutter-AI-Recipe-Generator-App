import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final scaleFactor = Get.context!.textScaleFactor;

  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();

  RxBool togglePassIcon=true.obs;
  void togglePassHandler(){
    togglePassIcon.toggle();
  }
}