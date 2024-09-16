import 'package:ai_recipe_generator/ui/auth/login/login_controller.dart';
import 'package:ai_recipe_generator/utils/app_text_styles.dart';
import 'package:ai_recipe_generator/widgets/custom_text_field.dart';
import 'package:ai_recipe_generator/widgets/rectangular_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller=Get.put(LoginController());
    return Scaffold(
      backgroundColor: AppColors.white2Color,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 74,
                  ),
                  Container(
                    decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                      border: Border.all(
                        color: AppColors.bgColor,
                        width: 3
                      ),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Image.asset(
                      'assets/logo/logo (2).png',
                      width: context.width*0.7,
                      height: 75,
                    ),
                  ),
                  // SvgPicture.asset('assets/images/Icons.svg',width:61.w,height:55.h),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Sign In',
                    style: AppTextStyles.blue24w500,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Hi Welcome back, you’ve been missed',
                    style: AppTextStyles.grey12w400,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "Email",
                      style: AppTextStyles.blue14w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 47,
                    child: CustomTextField(
                      hintText: 'example@gmail.com',
                      controller: controller.emailController,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: Text(
                      "Password",
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
                      controller: controller.passController,
                      obscureText: controller.togglePassIcon.value,
                      suffIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
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
                  Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(top: 5),
                    child: InkWell(
                        onTap: () {
                          // Get.to(const FindYourAccountView());
                        },
                        child: Text(
                          "forgot password?",
                          style: GoogleFonts.poppins().copyWith(
                              color: AppColors.bgColor,
                              fontSize: 10* controller.scaleFactor,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: RectangularButton(
                            onPress: () {
                              // controller.signIn();
                            },
                            title: 'Sign In',
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: AppTextStyles.blue14w400.copyWith(fontSize: 12*controller.scaleFactor),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign up?',
                          style: AppTextStyles.blue14w400.copyWith(
                            fontSize: 12 * controller.scaleFactor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
