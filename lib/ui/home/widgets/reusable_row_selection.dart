import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text_styles.dart';

class ReusableSelectionRow extends StatelessWidget{
  final String title;
  final VoidCallback onPress;

  ReusableSelectionRow({super.key, required this.title, required this.onPress});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
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
          IconButton(
            onPressed: onPress,
            icon:const Icon(CupertinoIcons.forward),color: AppColors.greyColor.withOpacity(0.7),)
        ],
      ),
    );
  }

}
