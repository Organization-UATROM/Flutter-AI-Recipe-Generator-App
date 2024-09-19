import 'dart:async';
import 'dart:ui';
import 'package:ai_recipe_generator/ui/on_boarding/on_boarding_controller.dart';
import 'package:ai_recipe_generator/utils/app_colors.dart';
import 'package:ai_recipe_generator/utils/app_text_styles.dart';
import 'package:ai_recipe_generator/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart' as rive;

import '../auth/login/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(context.width); // 360
    print(context.height); // 758
    OnBoardingController controller=Get.isRegistered<OnBoardingController>() ?
    Get.find() : Get.put(OnBoardingController());
    return Scaffold(
      // backgroundColor: Colors.white,
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Positioned(
              width: context.width*1.7,
              // bottom: 200, adjusting this to this
              bottom: context.resHeight(200), // this
              left: context.resWidth(100),
              child: Image.asset('assets/Backgrounds/Spline.png')),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20,sigmaY: 10),
              child: const SizedBox(),
            ),
          ),
          const rive.RiveAnimation.asset('assets/RiveAssets/shapes.riv'),
          Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30,sigmaY: 30),
                child: const SizedBox(),
              ),
          ),
          SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: context.resWidth(32)).copyWith(top: context.resHeight(30)),
                child: SizedBox(
                  width: context.resWidth(260),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your AI Powered Kitchen Assistant',
                        style: GoogleFonts.poppins().copyWith(
                            color: AppColors.whiteColor,
                            fontSize: context.resFontSize(50),
                            fontWeight: FontWeight.w700,
                            height: 1.5),),
                      const SizedBox(height: 16,),
                      Text("Whether you're a novice or a pro, discover new recipes and cooking tips "
                          "with smart AI recommendations.",
                        style: AppTextStyles.white16w300,),
                      SizedBox(height: context.resHeight(26),),
                      GestureDetector(
                        onTap: (){
                          controller.btnAnimationController.isActive=true;
                          Timer(const Duration(milliseconds: 1000),(){
                            Get.offAll(const LoginScreen(),transition: Transition.rightToLeft);
                          });
                        },
                        child: Container(
                            alignment: Alignment.centerLeft,
                            height: context.resHeight(64),
                            width: context.resWidth(260),
                            child: Stack(
                              children: [
                                rive.RiveAnimation.asset(
                                  'assets/RiveAssets/button.riv',
                                  controllers: [controller.btnAnimationController],
                                ),
                                Positioned.fill(
                                    top: context.resHeight(8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(CupertinoIcons.arrow_right,size: context.resRadialSize(22),),
                                        SizedBox(width: context.resWidth(8),),
                                        Text(" Let's start cooking",
                                          style: GoogleFonts.poppins().copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: context.resFontSize(14),
                                          ),),
                                      ],
                                    ))
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              )),


        ],
      ),
    );
  }
}
