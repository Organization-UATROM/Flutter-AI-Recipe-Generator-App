import 'package:ai_recipe_generator/ui/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/app_text_styles.dart';

class SavePromptRow extends StatelessWidget{
  SavePromptRow({super.key,});


  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.find();
    return Container(
      padding: const EdgeInsets.only(left: 10,bottom: 5,top: 5),
      child: Row(
        children: [
          Text('Save Prompt',style:AppTextStyles.blue14w400,),
          const Spacer(),
          Obx(()=>CupertinoSwitch(
            activeColor: const Color(0xffF37F6F),

              value: controller.isPromptSaved.value,
              onChanged: (value){
                controller.isPromptSaved.value=value;
              }),
          )
        ],
      ),
    );
  }

}