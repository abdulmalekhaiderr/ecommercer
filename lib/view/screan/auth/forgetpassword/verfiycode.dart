import 'package:commers/controller/auth/forgetpassword_controller.dart.dart';
import 'package:commers/controller/auth/signupcontroller.dart';
import 'package:commers/controller/auth/verifycode_controller.dart';
import 'package:commers/core/constant/color.dart';
import 'package:commers/view/widget/auth/custombuttomauth.dart';
import 'package:commers/view/screan/auth/textsignup.dart';
import 'package:commers/view/widget/auth/costomtextbodyauth.dart';
import 'package:commers/view/widget/auth/customtextformauth.dart';
import 'package:commers/view/widget/auth/customtexttitleauth.dart';
import 'package:commers/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text(
            "Verification Code",
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
                text: 'check Code',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                text: 'DigitCode'.tr,
              ),
              const SizedBox(
                height: 15,
              ),
              OtpTextField(
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.goToResetPassword();
                }, // end onSubmit
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
