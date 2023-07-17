import 'package:commers/controller/auth/signupcontroller.dart';
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
import 'package:get/get_utils/get_utils.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text(
            "17".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImp>(
              builder: ((controller) => Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formstat,
                      child: ListView(
                        children: [
                          CustomTextTitleAuth(
                            text: '10'.tr,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextBodyAuth(
                            text: '24'.tr,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextFormAuth(
                            isNumber: false,
                            valid: (val) {
                              return validinput(val!, 4, 39, "uesrname");
                            },
                            hinttext: "23".tr,
                            labeltext: "20".tr,
                            iconData: Icons.person_outline,
                            mycontroller: controller.username,
                          ),
                          CustomTextFormAuth(
                              isNumber: false,
                              valid: (val) {
                                return validinput(val!, 5, 100, "email");
                              },
                              hinttext: "12".tr,
                              labeltext: "18".tr,
                              iconData: Icons.email_outlined,
                              mycontroller: controller.email),
                          CustomTextFormAuth(
                              isNumber: true,
                              valid: (val) {
                                return validinput(val!, 9, 14, "phone");
                              },
                              hinttext: "22".tr,
                              labeltext: "21".tr,
                              iconData: Icons.phone_android_outlined,
                              mycontroller: controller.numberphone),
                          GetBuilder<SignUpControllerImp>(
                            builder: (controller) => CustomTextFormAuth(
                              onTapIcon: () {
                                controller.isshowPassword();
                              },
                              isNumber: false,
                              obscureText: controller.isshowpassword,
                              valid: (val) {
                                return validinput(val!, 5, 100, "password");
                              },
                              hinttext: "13".tr,
                              labeltext: "19".tr,
                              iconData: Icons.lock_outlined,
                              mycontroller: controller.password,
                            ),
                          ),
                          CustomButtomAuth(
                            text: '17'.tr,
                            onPressed: () {
                              controller.signUp();
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextSignUpSignIn(
                            textone: "25".tr,
                            texttwo: "26".tr,
                            onTap: () {
                              controller.goToSignUpIn();
                            },
                          ),
                        ],
                      ),
                    ),
                  ))),
        ));
  }
}
