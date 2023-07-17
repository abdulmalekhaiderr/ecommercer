import 'package:commers/binding.dart';
import 'package:commers/core/constant/color.dart';
import 'package:commers/core/localization/changelocal.dart';
import 'package:commers/core/localization/translation.dart';
import 'package:commers/core/services/services.dart';
import 'package:commers/routes.dart';
import 'package:commers/test.dart';
import 'package:commers/view/screan/language.dart';
import 'package:commers/view/screan/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme,

      initialBinding: MyBinding(),
      //routes: routes,
      getPages: routes,
    );
  }
}
