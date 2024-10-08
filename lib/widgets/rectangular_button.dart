import 'package:ai_recipe_generator/ui/auth/login/login_screen.dart';
import 'package:ai_recipe_generator/utils/app_text_styles.dart';
import 'package:ai_recipe_generator/utils/extensions.dart';
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
        padding: EdgeInsets.symmetric(vertical: context.resHeight(12),horizontal: context.resWidth(12)),
        height: context.resHeight(45),
        width: context.resWidth(327),
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(context.resRadialSize(10))
        ),
        child:Center(
            child:loading ? Padding(
              padding: EdgeInsets.all(context.resRadialSize(4)),
              child: const CircularProgressIndicator(),
            )
                :
                Text(title,
                  style: GoogleFonts.poppins().copyWith(fontSize: 14*AppTextStyles.scaleFactor,
                      color: AppColors.whiteColor,fontWeight: FontWeight.w500),)
        ),
      ),
    );
  }
}
