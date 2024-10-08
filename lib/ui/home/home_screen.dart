import 'package:ai_recipe_generator/dialogs/exit_dialog.dart';
import 'package:ai_recipe_generator/ui/home/home_controller.dart';
import 'package:ai_recipe_generator/ui/home/widgets/bottom_sheets/allergions_bottom_sheet.dart';
import 'package:ai_recipe_generator/ui/home/widgets/bottom_sheets/calorie_bottom_sheet.dart';
import 'package:ai_recipe_generator/ui/home/widgets/bottom_sheets/carb_level_bottom_sheet.dart';
import 'package:ai_recipe_generator/ui/home/widgets/bottom_sheets/cuisine_bottom_sheet.dart';
import 'package:ai_recipe_generator/ui/home/widgets/bottom_sheets/meal_type_bottom_sheet.dart';
import 'package:ai_recipe_generator/ui/home/widgets/bottom_sheets/preparation_time_bottom_sheet.dart';
import 'package:ai_recipe_generator/ui/home/widgets/bottom_sheets/protein_level_bottom_sheet.dart';
import 'package:ai_recipe_generator/ui/result/result_screen.dart';
import 'package:ai_recipe_generator/utils/app_colors.dart';
import 'package:ai_recipe_generator/utils/app_text_styles.dart';
import 'package:ai_recipe_generator/utils/extensions.dart';
import 'package:ai_recipe_generator/widgets/custom_text_field.dart';
import 'package:ai_recipe_generator/widgets/rectangular_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'widgets/bottom_sheets/diet_type_bottom_sheet.dart';
import 'widgets/reusable_row_selection.dart';
import 'widgets/save_prompt_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());

    return WillPopScope(
      onWillPop: () => onWillPopDialog(),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          centerTitle: true,
          title: Text(
            'AI Recipe Generator',
            style: AppTextStyles.blue24w500.copyWith(
                color: AppColors.whiteColor,
                fontSize: 20 * AppTextStyles.scaleFactor),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(context.resRadialSize(14.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  hintText: "What's in your mind...",
                  controller: controller.searchController,
                  preIcon: Padding(
                    padding: EdgeInsets.all(context.resRadialSize(14.0)),
                    child: SvgPicture.asset(
                      'assets/images/search_icon.svg',
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'Advanced Options',
                  style: AppTextStyles.grey12w400
                      .copyWith(decoration: TextDecoration.underline),
                ),
                SizedBox(height: context.resHeight(5)),
                Container(
                    width: context.width,
                    decoration: BoxDecoration(
                        color: AppColors.btnFillColor,
                        borderRadius: BorderRadius.circular(context.resRadialSize(10))),
                    child: Column(
                      children: [
                        Obx(()=>ReusableSelectionRow(
                            title: 'Diet Type',
                            selectedOption: controller.selectedDietTypeIndex.value!=-1 ?
                            controller.dietTypes[controller.selectedDietTypeIndex.value]['option'] : null,
                            onPress: () {
                              Get.bottomSheet(const DietTypeBottomSheet());
                            })),
                       Obx(()=> ReusableSelectionRow(
                         title: 'Calorie Range',
                         selectedOption: controller.selectedCalorieRangeIndex.value!=-1 ?
                          controller.calorieRanges[controller.selectedCalorieRangeIndex.value]['option'] : null,
                         onPress: () {
                           Get.bottomSheet(const CalorieBottomSheet());
                           },
                        )),
                        Obx(()=>ReusableSelectionRow(
                          title: 'Protein Level',
                          selectedOption:  controller.selectedProteinLevelIndex.value!=-1 ?
                          controller.calorieRanges[controller.selectedProteinLevelIndex.value]['option'] : null,
                          onPress: () {
                           Get.bottomSheet(const ProteinLevelBottomSheet());
                          },
                        )),
                        Obx(()=>ReusableSelectionRow(
                          title: 'Carb Level',
                          selectedOption: controller.selectedCarbLevelIndex.value!=-1 ?
                          controller.carbLevels[controller.selectedCarbLevelIndex.value]['option'] : null,
                          onPress: () {
                            Get.bottomSheet(const CarbLevelBottomSheet());
                          },
                        )),
                       Obx(()=> ReusableSelectionRow(
                          title: 'Meal Type',
                          selectedOption: controller.selectedMealTypeIndex.value!=-1 ?
                          controller.mealType[controller.selectedMealTypeIndex.value]['title'] : null,
                          onPress: () {
                            Get.bottomSheet(const MealTypeBottomSheet());
                          },
                        )),
                        Obx(()=>ReusableSelectionRow(
                          title: 'Preparation Time',
                          selectedOption: controller.selectedPreparationTimeIndex.value!=-1 ?
                          controller.preparationTime[controller.selectedPreparationTimeIndex.value]['title'] : null,
                          onPress: () {
                            Get.bottomSheet(const PreparationTimeBottomSheet());
                          },
                        )),
                        Obx(()=>ReusableSelectionRow(
                          title: 'Allergen Exclusions',
                          selectedOption: controller.selectedAllergenIndex.value!=-1 ?
                          controller.allergens[controller.selectedAllergenIndex.value]['title'] : null,
                          onPress: () {
                            Get.bottomSheet(const AllergionsBottomSheet());
                          },
                        )),
                        Obx(()=>ReusableSelectionRow(
                          title: 'Cuisine Type',
                          selectedOption: controller.selectedCuisineTypeIndex.value!=-1 ?
                          controller.cuisineTypes[controller.selectedCuisineTypeIndex.value]['title'] : null,
                          onPress: () {
                            Get.bottomSheet(const CuisineBottomSheet());
                          },
                        )),
                        SavePromptRow()
                      ],
                    )),
                const SizedBox(height: 40),
                RectangularButton(
                  title: 'Generate Recipe',
                  onPress: () {
                    Get.to(const ResultScreen(),transition: Transition.rightToLeft);
                  },
                ),
                const SizedBox(height: 15)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

