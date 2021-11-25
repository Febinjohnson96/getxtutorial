import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/models/user/user.dart';
import 'package:getxtutorial/repository/api_repository.dart';

class OtpController extends GetxController {
  final otpController = TextEditingController();
  bool _isSignUp = false;
  bool _isEmail = false;
  String? _countryCode;
  String? _mobileNumber;
  String? _email;

  @override
  void onInit() {
    setParameters();
    super.onInit();
  }

  setParameters() {
    final arguments = Get.arguments;
    _isSignUp = arguments['isSignup'];
    _isEmail = arguments['isEmail'];
    _countryCode = arguments['countryCode'];
    _mobileNumber = arguments['mobile'];
    _email = arguments['email'];
  }

  otpVerification() async {
    final response;
    response = await ApiRepository.to.otpVerification(
      otp: otpController.text,
      login: '1',
      mobile: _mobileNumber.toString(),
      mobileCode: '+91',
    );
  }
}
