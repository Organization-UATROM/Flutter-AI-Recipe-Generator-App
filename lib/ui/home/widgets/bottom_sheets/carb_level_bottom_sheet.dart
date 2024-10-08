import 'package:ai_recipe_generator/ui/home/home_controller.dart';
import 'package:ai_recipe_generator/utils/app_text_styles.dart';
import 'package:ai_recipe_generator/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/app_colors.dart';
import 'widgets/bottom_sheet_row.dart';


class CarbLevelBottomSheet extends StatelessWidget {
  const CarbLevelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.find();
    return Container(
      width: context.width,
      height:context.resWidth(276),
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
                Text('Carb Level',style: AppTextStyles.black14w400.copyWith(fontSize: 20* AppTextStyles.scaleFactor,fontWeight: FontWeight.w500),),
                SizedBox(height: context.resHeight(3),),
                Text('Select your carb level',style: AppTextStyles.black14w400.copyWith(
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
                for(int i=0;i<controller.carbLevels.length;i++)...[
                  Obx(()=>BottomSheetRow(
                    title: controller.carbLevels[i]['title'] ?? '',
                    option: controller.carbLevels[i]['option'] ?? '',
                    onPress: (){
                      if(controller.selectedCarbLevelIndex.value==i){
                        controller.selectedCarbLevelIndex.value=-1;
                      }else{
                        controller.selectedCarbLevelIndex.value=i;
                      }
                    },
                    isSelected:controller.selectedCarbLevelIndex.value==i ? true : false ,
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
