// ignore_for_file: file_names
import 'package:get/get.dart';
import 'package:getxtutorial/managers/api_helper.dart';
import 'package:getxtutorial/models/loginresponse/loginresponse.dart';
import 'package:getxtutorial/models/otp/otpresponse.dart';
import 'package:getxtutorial/repository/api_constants.dart';

abstract class ApiRepository extends GetxController {
  static ApiRepository get to => Get.find();
  Future<LoginResponse> loginWithMobile(String mobile);
    Future<OtpResponse> otpVerification({
      required String otp, required String mobile,required String login,required String mobileCode});
      // hello();
}

class ApiRepositoryImplement extends GetxController implements ApiRepository {
  ApiHelper helper = ApiHelper();

  @override
  Future<LoginResponse> loginWithMobile(String mobile) async {
    final param = {'mobile': mobile};
    final response = await helper.get(ApiEndPoints.loginWithMobile, param);
    print('REsponse in apiRep $response');
    return LoginResponse.fromJson(response);
  }

  @override
  Future<OtpResponse> otpVerification(
      {required String otp,required String mobile,required String login,required String mobileCode}) async {
    final params = {
      'otp': otp,
      'login': login,
      'mobile': mobile,
      'mobile_code': mobileCode,
    };
    final response = await helper.get(ApiEndPoints.validateMobileOtp, params);
    print('RESPONSE: $response');
    return OtpResponse.fromJson(response);
  }
  hello(){
    print('Hello TEST');
  }
}
