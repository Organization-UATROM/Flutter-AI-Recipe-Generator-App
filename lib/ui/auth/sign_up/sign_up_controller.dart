import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  final scaleFactor = Get.context!.textScaleFactor;

  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  TextEditingController cPassController=TextEditingController();

  RxBool togglePassIcon=true.obs;
  void togglePassHandler(){
    togglePassIcon.toggle();
  }
  RxBool toggleCPassIcon=true.obs;
  void toggleCPassHandler(){
    toggleCPassIcon.toggle();
  }

}