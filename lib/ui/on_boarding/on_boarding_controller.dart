import 'package:get/get.dart';
import 'package:rive/rive.dart';

class OnBoardingController extends GetxController{
  late RiveAnimationController btnAnimationController;

  @override
  void onInit() {
    btnAnimationController = OneShotAnimation('active');
    super.onInit();
  }
}