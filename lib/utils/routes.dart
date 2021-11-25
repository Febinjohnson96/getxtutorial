import 'package:get/route_manager.dart';
import 'package:getxtutorial/screens/login/login.dart';import 'package:getxtutorial/screens/otp/otp.dart';

List<GetPage> routes()=>[
  GetPage(name: '/', page: ()=>const LoginScreen()),
  GetPage(name: '/otp-screen', page:()=> const OtpScreen()),
];