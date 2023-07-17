import 'package:commers/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginCotroller extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginCotroller {
  GlobalKey<FormState> formstat = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;
  isshowPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() {
    var formdata = formstat.currentState;
    if (formdata!.validate()) {
      print("valid");
    } else {
      print("not valid ");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRout.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRout.forgetPassword);
  }
}
