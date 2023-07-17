import 'package:commers/core/constant/routes.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class SuccessSignUpController extends GetxController {
  goToPageLogin();
}

class SuccessSignUpControllerimp extends SuccessSignUpController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRout.login);
  }
}
