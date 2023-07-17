import 'package:commers/controller/auth/forgetpassword_controller.dart.dart';
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

class ForgetPasssword extends StatelessWidget {
  const ForgetPasssword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text(
            "14".tr,
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
                text: '27'.tr,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                text: '29'.tr,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validinput(val!, 5, 100, "email");
                },
                hinttext: "12".tr,
                labeltext: "18".tr,
                iconData: Icons.email_outlined,
                mycontroller: controller.email,
              ),
              CustomButtomAuth(
                text: '30'.tr,
                onPressed: () {
                  controller.goToVerfiycode();
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
