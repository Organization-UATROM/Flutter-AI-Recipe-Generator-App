import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../../home/home_screen.dart';

class LoginController extends GetxController{
  final scaleFactor = Get.context!.textScaleFactor;

  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();

  RxBool togglePassIcon=true.obs;
  void togglePassHandler(){
    togglePassIcon.toggle();
  }

  logIn(){
    final error=fieldValidation();
    if(error!=null){
      Future.delayed(const Duration(milliseconds: 1), () {
        Utils.flushBarErrorMessage(error);
      });
      return;
    }
    if(emailController.text=='admin@gmail.com' && passController.text=='1234'){
      Get.offAll(const HomeScreen());
    Future.delayed(const Duration(milliseconds: 100), () {
      Utils.flushBarSuccessMessage('Successfully logged in');
    });
    }else{
      Future.delayed(const Duration(milliseconds: 1), () {
        Utils.flushBarErrorMessage('Invalid credentials');
      });
    }
  }

  fieldValidation(){
    String? error;
    if(emailController.text.isEmpty || passController.text.isEmpty){
      error='All fields are required';
    }
    return error;
  }
}