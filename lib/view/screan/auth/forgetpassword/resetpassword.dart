import 'package:commers/controller/auth/forgetpassword_controller.dart.dart';
import 'package:commers/controller/auth/resetpassword_controller.dart';
import 'package:commers/controller/auth/signupcontroller.dart';
import 'package:commers/core/constant/color.dart';
import 'package:commers/core/function/validinput.dart';
import 'package:commers/view/widget/auth/custombuttomauth.dart';
import 'package:commers/view/screan/auth/textsignup.dart';
import 'package:commers/view/widget/auth/costomtextbodyauth.dart';
import 'package:commers/view/widget/auth/customtextformauth.dart';
import 'package:commers/view/widget/auth/customtexttitleauth.dart';
import 'package:commers/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

class ResetPasssword extends StatelessWidget {
  const ResetPasssword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text(
            "Resetpassword",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              CustomTextTitleAuth(
                text: '35'.tr,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                text: '35'.tr,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validinput(val!, 5, 30, "password");
                },
                hinttext: "13".tr,
                labeltext: "19".tr,
                iconData: Icons.lock_outlined,
                mycontroller: controller.password,
              ),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validinput(val!, 5, 30, "password");
                },
                hinttext: "Re" + " " + "13".tr,
                labeltext: "19".tr,
                iconData: Icons.lock_outlined,
                mycontroller: controller.password,
              ),
              CustomButtomAuth(
                text: '33'.tr,
                onPressed: () {
                  controller.goToSuccessResetPassword();
                },
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
