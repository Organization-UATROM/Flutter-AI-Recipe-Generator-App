
import 'package:ai_recipe_generator/ui/home/home_controller.dart';
import 'package:ai_recipe_generator/utils/app_text_styles.dart';
import 'package:ai_recipe_generator/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/app_colors.dart';
import 'widgets/bottom_sheet_row.dart';

class MealTypeBottomSheet extends StatelessWidget {
  const MealTypeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.find();
    return Container(
      width: context.width,
      height:context.resWidth(270),
      margin: EdgeInsets.symmetric(horizontal: context.resWidth(14)),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(context.resRadialSize(12)),
            topRight: Radius.circular(context.resRadialSize(12)),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          Padding(
            padding: EdgeInsets.all(context.resRadialSize(16.0)).copyWith(bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Meal Type',style: AppTextStyles.black14w400.copyWith(fontSize: 20* AppTextStyles.scaleFactor,fontWeight: FontWeight.w500),),
                SizedBox(height: context.resHeight(3),),
                Text('Select your meal type',style: AppTextStyles.black14w400.copyWith(
                    color: AppColors.greyColor,fontSize: context.resFontSize(12)),
                ),
                SizedBox(height: context.resHeight(3),),
              ],
            ),
          ),

          const Divider(),

          // content for selection
          Padding(
            padding: EdgeInsets.all(context.resRadialSize(16.0)).copyWith(bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for(int i=0;i<controller.mealType.length;i++)...[
                  Obx(()=>BottomSheetRow(
                    title: controller.mealType[i]['title'] ?? '',
                    option: controller.mealType[i]['option'] ?? '',
                    onPress: (){
                      if(controller.selectedMealTypeIndex.value==i){
                        controller.selectedMealTypeIndex.value=-1;
                      }else{
                        controller.selectedMealTypeIndex.value=i;
                      }
                    },
                    isSelected:controller.selectedMealTypeIndex.value==i ? true : false ,
                  )),
                  SizedBox(height: context.resHeight(3),),
                ]
              ],
            ),
          ),

        ],
      ),
    );
  }
}
