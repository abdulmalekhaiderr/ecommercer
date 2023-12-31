import 'package:commers/controller/onboarding_controller.dart';
import 'package:commers/core/constant/color.dart';
import 'package:commers/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: ((value) {
        controller.onPageChanged(value);
      }),
      itemCount: onBoardinglist.length,
      itemBuilder: (context, i) => Column(
        children: [
          Image.asset(
            onBoardinglist[i].image!,
            height: Get.width / 1.0,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            onBoardinglist[i].title!,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardinglist[i].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    height: 2,
                    color: AppColor.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )),
        ],
      ),
    );
  }
}
