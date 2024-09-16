import 'package:ai_recipe_generator/ui/home/home_controller.dart';
import 'package:ai_recipe_generator/utils/app_colors.dart';
import 'package:ai_recipe_generator/utils/app_text_styles.dart';
import 'package:ai_recipe_generator/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'widgets/reusable_row_selection.dart';
import 'widgets/save_prompt_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColors.white2Color,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        title: Text(
          'AI Recipe Generator',
          style: AppTextStyles.blue24w500.copyWith(color: AppColors.whiteColor,fontSize: 20*AppTextStyles.scaleFactor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: "What's in your mind...",
              controller: controller.searchController,
              preIcon: Padding(
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset('assets/images/search_icon.svg',color: AppColors.greyColor,),
              ),
            ),
            const SizedBox(height: 25,),
            Text(
              'Advanced Options',
              style: AppTextStyles.grey12w400.copyWith(decoration: TextDecoration.underline),
            ),
            const SizedBox(height: 5,),
            Container(
              width: context.width,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  ReusableSelectionRow(title: 'Diet Type', onPress: (){}),
                  ReusableSelectionRow(title: 'Calorie Range', onPress: (){}),
                  ReusableSelectionRow(title: 'Protein Level', onPress: (){}),
                  ReusableSelectionRow(title: 'Carb Level', onPress: (){}),
                  ReusableSelectionRow(title: 'Meal Type', onPress: (){}),
                  ReusableSelectionRow(title: 'Preparation Time', onPress: (){}),
                  ReusableSelectionRow(title: 'Allergen Exclusions', onPress: (){}),
                  ReusableSelectionRow(title: 'Cuisine Type', onPress: (){}),
                  SavePromptRow()
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}


