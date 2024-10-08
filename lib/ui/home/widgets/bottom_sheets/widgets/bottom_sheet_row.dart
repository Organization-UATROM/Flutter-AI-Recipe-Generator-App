import 'package:ai_recipe_generator/ui/home/home_controller.dart';
import 'package:ai_recipe_generator/utils/app_text_styles.dart';
import 'package:ai_recipe_generator/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/app_colors.dart';

class BottomSheetRow extends StatelessWidget {
  final String title;
  final String option;
  final VoidCallback onPress;
  final bool isSelected;
  const BottomSheetRow({super.key, required this.onPress, required this.title, required this.option, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        height: context.resHeight(44),
        width: context.width,
        child: Row(
          children: [
            Text(title,style: AppTextStyles.black14w400.copyWith(fontSize: context.resFontSize(16),fontWeight: FontWeight.w500),),
            const Spacer(),
            Text(option,style: AppTextStyles.black14w400.copyWith(
                color: AppColors.greyColor),
            ),
            if(isSelected)...[
              SizedBox(width: context.resWidth(3),),
              Icon(Icons.check_circle,color: Colors.blue,size: context.resRadialSize(22),)
            ]
          ],
        ),
      ),
    );
  }
}
