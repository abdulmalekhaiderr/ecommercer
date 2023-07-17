import 'package:commers/core/constant/color.dart';
import 'package:commers/core/constant/routes.dart';
import 'package:commers/core/localization/changelocal.dart';
import 'package:commers/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            CustomButtonLang(
              textbotton: 'Ar',
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRout.onBoarding);
              },
            ),
            CustomButtonLang(
              textbotton: 'En',
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRout.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
