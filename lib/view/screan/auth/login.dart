import 'package:commers/controller/auth/logincotroller.dart';
import 'package:commers/core/constant/color.dart';
import 'package:commers/core/function/alaterexitapp.dart';
import 'package:commers/core/function/validinput.dart';
import 'package:commers/view/widget/auth/custombuttomauth.dart';
import 'package:commers/view/screan/auth/textsignup.dart';
import 'package:commers/view/widget/auth/costomtextbodyauth.dart';
import 'package:commers/view/widget/auth/customtextformauth.dart';
import 'package:commers/view/widget/auth/customtexttitleauth.dart';
import 'package:commers/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text(
            "15".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstat,
              child: ListView(
                children: [
                  LogoAuth(),
                  CustomTextTitleAuth(
                    text: '10'.tr,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextBodyAuth(
                    text: '11'.tr,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFormAuth(
                    valid: (val) {
                      return validinput(val!, 5, 100, "email");
                    },
                    hinttext: "12".tr,
                    labeltext: "18".tr,
                    iconData: Icons.email_outlined,
                    mycontroller: controller.email,
                    isNumber: false,
                  ),
                  GetBuilder<LoginControllerImp>(
                    builder: (controller) => CustomTextFormAuth(
                      onTapIcon: () {
                        controller.isshowPassword();
                      },
                      obscureText: controller.isshowpassword,
                      isNumber: false,
                      valid: (val) {
                        return validinput(val!, 5, 30, "password");
                      },
                      hinttext: "13".tr,
                      labeltext: "19".tr,
                      iconData: Icons.lock_outlined,
                      mycontroller: controller.password,
                    ),
                  ),
                  InkWell(
                    onTap: (() {
                      controller.goToForgetPassword();
                    }),
                    child: Text(
                      "14".tr,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  CustomButtomAuth(
                    text: '15'.tr,
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextSignUpSignIn(
                    textone: "16".tr,
                    texttwo: "17".tr,
                    onTap: () {
                      controller.goToSignUp();
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
