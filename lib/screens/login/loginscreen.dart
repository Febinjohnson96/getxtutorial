import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/screens/login/logincontroller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Logincontroller>(
      init: Logincontroller(),
      builder: (controller){
            return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mobileInput(),
             const  SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                print(controller.mobileNumberController);
                controller.loginWithmobile();
              }, child: const Text('Login'))
            ],
          ),
        ),
      ),
    );
      });
  }

  TextFormField mobileInput() {
    final Logincontroller _controller = Get.find();
    return TextFormField(
      controller: _controller.mobileNumberController,
            decoration:const InputDecoration(
              hintText: 'EnterPhone'
            ),
              keyboardType: TextInputType.number,
            );
  }
}