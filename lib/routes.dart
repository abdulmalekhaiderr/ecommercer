import 'package:commers/core/constant/routes.dart';
import 'package:commers/core/middleware/mymiddlewaer.dart';

import 'package:commers/view/screan/auth/forgetpassword/forgetpassword.dart';
import 'package:commers/view/screan/auth/forgetpassword/verifycodesignup.dart';
import 'package:commers/view/screan/auth/login.dart';
import 'package:commers/view/screan/auth/forgetpassword/resetpassword.dart';
import 'package:commers/view/screan/auth/signup.dart';
import 'package:commers/view/screan/auth/success_signup.dart';
import 'package:commers/view/screan/auth/forgetpassword/successresetpassword.dart';
import 'package:commers/view/screan/auth/forgetpassword/verfiycode.dart';
import 'package:commers/view/screan/language.dart';
import 'package:commers/view/screan/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  //auth
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),
  GetPage(name: AppRout.login, page: () => const Login()),
  GetPage(name: AppRout.signUp, page: () => const SignUp()),
  GetPage(name: AppRout.forgetPassword, page: () => const ForgetPasssword()),
  GetPage(name: AppRout.restPassword, page: () => const ResetPasssword()),
  GetPage(name: AppRout.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRout.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRout.successResetpassword,
      page: () => const SuccessResetpassword()),
  //onboarding
  GetPage(name: AppRout.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRout.verifyCodeSignup, page: () => const VerfiyCodeSignUp()),
];
