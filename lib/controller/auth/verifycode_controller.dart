import 'package:commers/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;
  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRout.restPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
