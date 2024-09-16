import 'package:ai_recipe_generator/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';

class RectangularButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress ;
  const RectangularButton({super.key,required this.title,required this.onPress,this.loading=false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
        height: 45,
        width: 327,
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child:Center(
            child:loading ? const Padding(
              padding: EdgeInsets.all(4.0),
              child: CircularProgressIndicator(),
            )
                :
                Text(title,
                  style: GoogleFonts.poppins().copyWith(fontSize: 14*AppTextStyles.scaleFactor,color: AppColors.whiteColor,fontWeight: FontWeight.w500),)
        ),
      ),
    );
  }
}
