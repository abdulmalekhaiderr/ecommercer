import 'dart:ui';

import 'package:commers/controller/onboarding_controller.dart';
import 'package:commers/core/constant/color.dart';
import 'package:commers/data/datasource/static/static.dart';
import 'package:commers/view/widget/onboarding/custombutton.dart';
import 'package:commers/view/widget/onboarding/customsilder.dart';
import 'package:commers/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Column(
            children: [
              const Expanded(
                flex: 4,
                child: CustomSliderOnBoarding(),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      CutomDotControllerOnBoarding(),
                      Spacer(flex: 1),
                      CustomButtonOnBoarding(),
                      Spacer(flex: 2),
                    ],
                  ))
            ],
          ),
        ));
  }
}
