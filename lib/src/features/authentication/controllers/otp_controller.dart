import 'dart:convert';

import 'package:get/get.dart';
import 'package:loginpage/src/features/authentication/screens/DashBoard/widgets/dashboard.dart';

import '../../../repository/authentication/authentication_repository.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async{
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const DashBoard()) : Get.back();
  }
}