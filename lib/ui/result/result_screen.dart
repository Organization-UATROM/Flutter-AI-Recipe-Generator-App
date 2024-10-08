import 'package:ai_recipe_generator/ui/home/home_screen.dart';
import 'package:ai_recipe_generator/ui/result/result_controller.dart';
import 'package:ai_recipe_generator/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResultController controller=Get.isRegistered<ResultController>() ?
    Get.find<ResultController>() : Get.put(ResultController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.whiteColor,
        centerTitle: false,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: (){
            Get.offAll(const HomeScreen(),transition: Transition.leftToRight);
          },
          icon:Icon(Icons.arrow_back,color: AppColors.bgColor,size: context.resFontSize(23)),),
        title: Text(
          'back',
          style: AppTextStyles.blue24w500.copyWith(
              // color: AppColors.whiteColor,
              fontSize: 20 * AppTextStyles.scaleFactor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image
            Container(
              height: context.resHeight(160),
              width: context.width,
              padding: EdgeInsets.symmetric(horizontal: context.resWidth(14)).copyWith(bottom: context.resHeight(14)),
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/food_image.webp'),fit: BoxFit.cover)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: context.resWidth(8),vertical: context.resHeight(4),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(context.resRadialSize(18)),
                      color: AppColors.whiteColor
                    ),
                      child: Row(
                        children: [
                          Icon(Icons.star_rate_rounded,color: AppColors.yellowColor,size: context.resRadialSize(16),),
                          Text('4.8',style: AppTextStyles.black14w400.copyWith(fontSize: context.resFontSize(10)),),
                        ],
                      )),
        
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: context.resWidth(8),vertical: context.resHeight(4),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(context.resRadialSize(18)),
                      color: AppColors.blackColor
                    ),
                      child: Text('Exclusive',style: AppTextStyles.black14w400.copyWith(
                          fontSize: context.resFontSize(10),color: AppColors.whiteColor),)),
                ],
              ),
            ),
        
            // title
            Padding(
              padding: EdgeInsets.all(context.resRadialSize(12),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pasta with Tomato and Basil',
                    style: AppTextStyles.blue24w500.copyWith(
                        color: AppColors.blackColor,fontWeight: FontWeight.w600,fontSize: context.resFontSize(18)),
                  ),
        
                  GestureDetector(
                    onTap: (){
                      controller.isFavourite.toggle();
                    },
                    child: Obx(()=>Container(
                      padding: EdgeInsets.all(context.resRadialSize(4)),
                        decoration: BoxDecoration(
                          color: AppColors.btnFillColor,
                          shape: BoxShape.circle
                        ),
                        child:controller.isFavourite.value ?
                        Icon(Icons.favorite,size: context.resRadialSize(24),
                          color:AppColors.redColor,)
                            :
                        Icon(Icons.favorite_border,size: context.resRadialSize(24),
                          color:AppColors.redColor,))),
                  ),
                ],
              ),
            ),
        
            //Ingredients
            Padding(
              padding: EdgeInsets.all(context.resRadialSize(12),),
              child: Text('Ingredients:',style:AppTextStyles.blue24w500.copyWith(
                // color: AppColors.whiteColor,
                  fontSize: 18 * AppTextStyles.scaleFactor) ),
            ),
        
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.resWidth(12)),
              child: Text('200g pasta ,2 tbsp olive oil, 2 garlic cloves, minced,'
                  ' 400g canned tomatoes, Fresh basil leaves, salt and pepper to taste, grated Parmesan (optional).',
                style: AppTextStyles.black14w400.copyWith(color: AppColors.greyColor),
              ),
            ),
        
            Padding(
              padding: EdgeInsets.all(context.resRadialSize(12),),
              child: Text('Preparation Steps:',style:AppTextStyles.blue24w500.copyWith(
                // color: AppColors.whiteColor,
                  fontSize: 18 * AppTextStyles.scaleFactor) ),
            ),
        
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.resWidth(12)),
              child: Text('1. Cook the pasta according to package instructions until al dente. Drain and set aside.\n'
                  '2. In a large pan, heat the olive oil over medium heat. Add the minced garlic and sauté for 1-2 minutes until fragrant.\n'
                  '3. Add the canned tomatoes to the pan. Season with salt and pepper. Simmer for about 10 minutes.\n'
                  '4. Stir in fresh basil leaves and cook for an additional 2 minutes.\n'
                  '5. Combine the cooked pasta with the sauce, tossing to coat well.\n'
                  '6. Serve hot, topped with grated Parmesan if desired.',
                style: AppTextStyles.black14w400.copyWith(color: AppColors.greyColor),
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
