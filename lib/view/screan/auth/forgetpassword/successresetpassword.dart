import 'package:commers/controller/auth/sucessresetpassword_controller.dart';
import 'package:commers/core/constant/color.dart';
import 'package:commers/view/widget/auth/custombuttomauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetpassword extends StatelessWidget {
  const SuccessResetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerimp controller =
        Get.put(SuccessResetPasswordControllerimp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text(
          "32".tr,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
            child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: AppColor.primaryColor,
            ),
          ),
          Text("37".tr),
          Text("38".tr),
          const Spacer(),
          Container(
            width: double.infinity,
            child: CustomButtomAuth(
              text: '31'.tr,
              onPressed: () {
                controller.goToPageLogin();
              },
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ]),
      ),
    );
  }
}
