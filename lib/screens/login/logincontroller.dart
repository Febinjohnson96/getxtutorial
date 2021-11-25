import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/repository/api_repository.dart';

class Logincontroller extends GetxController{
  final mobileNumberController = TextEditingController();

  @override
  void onClose() {
    mobileNumberController.dispose();
    super.onClose();
  }

  loginWithmobile() async{
    try{
      final response = await ApiRepository.to.loginWithMobile(mobileNumberController.text);
      final arguments={
        'isSignup':false,
        'isEmail':false,
        'countryCode':'+91',
        'mobile':mobileNumberController.text,
        'email':null,
      };
      Get.toNamed('/otp-screen',arguments: arguments);
    }catch(e){
      print(e.toString());
    }
  }

}