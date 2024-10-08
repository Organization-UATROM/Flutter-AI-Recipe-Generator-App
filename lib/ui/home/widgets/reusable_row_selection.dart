import 'package:ai_recipe_generator/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text_styles.dart';

class ReusableSelectionRow extends StatelessWidget{
  final String title;
  final String? selectedOption;
  final VoidCallback onPress;

  const ReusableSelectionRow({super.key, required this.title, required this.onPress, this.selectedOption});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:context.resWidth(10)),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: AppColors.greyColor.withOpacity(0.6),
                  width: 1.3
              )
          )
      ),
      child: Row(
        children: [
          Text(title,style:AppTextStyles.blue14w400,),
          const Spacer(),
          if(selectedOption !=null)
            Text(selectedOption!,style:AppTextStyles.blue14w400.copyWith(color: AppColors.greyColor,fontSize: context.resFontSize(12)),),
          IconButton(
            onPressed: onPress,
            icon:const Icon(CupertinoIcons.forward),color: AppColors.greyColor.withOpacity(0.7),)
        ],
      ),
    );
  }

}
