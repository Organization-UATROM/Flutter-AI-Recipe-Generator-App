import 'package:ai_recipe_generator/ui/auth/login/login_screen.dart';
import 'package:ai_recipe_generator/ui/auth/sign_up/sign_up_controller.dart';
import 'package:ai_recipe_generator/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text_styles.dart';
import '../../../widgets/custom_text_field.dart';
import '../../../widgets/rectangular_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controller=Get.put(SignUpController());
    return Scaffold(
      backgroundColor: AppColors.white2Color,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.resWidth(24)),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: context.resHeight(74),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        border: Border.all(
                            color: AppColors.bgColor,
                            width: context.resWidth(3)
                        ),
                        borderRadius: BorderRadius.circular(context.resRadialSize(12))
                    ),
                    child: Image.asset(
                      'assets/logo/logo (2).png',
                      width: context.width*0.7,
                      height: context.resHeight(75),
                    ),
                  ),
                  // SvgPicture.asset('assets/images/Icons.svg',width:61.w,height:55.h),
                  SizedBox(
                    height:context.resHeight(25),
                  ),
                  Text(
                    'Sign Up',
                    style: AppTextStyles.blue24w500,
                  ),
                  SizedBox(
                    height: context.resHeight(5),
                  ),
                  Text(
                    'Hi Welcome back, you’ve been missed',
                    style: AppTextStyles.grey12w400,
                  ),
                  SizedBox(
                    height: context.resHeight(20),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(right: context.resWidth(20), top: context.resHeight(5)),
                    child: Text(
                      "Email",
                      style: AppTextStyles.blue14w400,
                    ),
                  ),
                  SizedBox(
                    height: context.resHeight(5),
                  ),
                  SizedBox(
                    height: context.resHeight(47),
                    child: CustomTextField(
                      hintText: 'example@gmail.com',
                      controller: controller.emailController,
                    ),
                  ),
                  SizedBox(
                    height: context.resHeight(10),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(right: context.resWidth(20), top: context.resHeight(5)),
                    child: Text(
                      "Password",
                      style: AppTextStyles.blue14w400,
                    ),
                  ),
                  SizedBox(
                    height: context.resHeight(5),
                  ),
                  Obx(()=> SizedBox(
                    height: context.resHeight(47),
                    child: CustomTextField(
                      hintText: '********',
                      controller: controller.passController,
                      obscureText: controller.togglePassIcon.value,
                      suffIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: context.resWidth(12.0),vertical: context.resHeight(12.0)),
                        child: InkWell(
                            onTap: () {
                              controller.togglePassHandler();
                            },
                            child: (controller.togglePassIcon.value)
                                ? SvgPicture.asset('assets/images/password_close.svg',)
                                : SvgPicture.asset(
                              'assets/images/password_open.svg',
                            )),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(
                    height: context.resHeight(10),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(right: context.resWidth(20), top: context.resHeight(5)),
                    child: Text(
                      "Confirm Password",
                      style: AppTextStyles.blue14w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Obx(()=> SizedBox(
                    height: 47,
                    child: CustomTextField(
                      hintText: '********',
                      controller: controller.cPassController,
                      obscureText: controller.toggleCPassIcon.value,
                      suffIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: context.resWidth(12.0),vertical: context.resHeight(12.0)),
                        child: InkWell(
                            onTap: () {
                              controller.toggleCPassHandler();
                            },
                            child: (controller.toggleCPassIcon.value)
                                ? SvgPicture.asset('assets/images/password_close.svg',)
                                : SvgPicture.asset(
                              'assets/images/password_open.svg',
                            )),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(
                    height: context.resHeight(20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: context.resHeight(10.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: RectangularButton(
                            onPress: () {
                              // controller.signIn();
                            },
                            title: 'Sign Up',
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.offAll(const LoginScreen(),transition: Transition.leftToRight);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: AppTextStyles.blue14w400.copyWith(fontSize: 12*controller.scaleFactor),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign In?',
                            style: AppTextStyles.blue14w400.copyWith(
                              fontSize: 12 * controller.scaleFactor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
