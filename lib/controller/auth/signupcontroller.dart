import 'package:commers/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SiginUpController extends GetxController {
  signUp();
  goToSignUpIn();
}

class SignUpControllerImp extends SiginUpController {
  GlobalKey<FormState> formstat = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController numberphone;
  late TextEditingController password;
  bool isshowpassword = true;
  isshowPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  signUp() {
    var formdata = formstat.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRout.verifyCodeSignup);

      print("valid ");
    } else {
      print("not valid ");
    }
  }

  @override
  goToSignUpIn() {
    Get.offNamed(AppRout.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    username = TextEditingController();
    numberphone = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    username.dispose();
    numberphone.dispose();
    password.dispose();
    super.dispose();
  }
}
