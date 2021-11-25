import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getxtutorial/repository/api_repository.dart';
import 'package:getxtutorial/utils/routes.dart';
import 'package:get/get.dart';

void main() {
  intiate();
  runApp(const MyApp());
}

void intiate(){
  Get.put<ApiRepository>(ApiRepositoryImplement(),permanent: true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ToffeeRide',
      debugShowCheckedModeBanner: false,
      getPages: routes(),
    );
  }
}