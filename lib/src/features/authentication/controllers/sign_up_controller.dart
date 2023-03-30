

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:loginpage/src/features/authentication/screens/ForgetPassword/OTP/OTP_screen.dart';
import 'package:loginpage/src/repository/authentication/authentication_repository.dart';
import 'package:loginpage/src/repository/user/user_repository.dart';

import '../models/user_model.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  // TextField controllers to get data from TextFields

final email = TextEditingController();
final password = TextEditingController();
final fullName = TextEditingController();
final phoneNo = TextEditingController();

final userRepo = Get.put(UserRepository());
// call this function from Design and it will do the rest

void registerUser(String email, String password){
  AuthenticationRepository.instance.createUserWithWmailAndPassword(email, password);
}

  void phoneAuthentication(String phoneNo) {
  AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

  Future<void> createUser(UserModel user) async{
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(()=> const OTPScreen());
  }
}