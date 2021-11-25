import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/screens/otp/otp.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpController>(
        init: OtpController(),
        builder: (controller) {
          return Scaffold(
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   otpInput(),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          controller.otpVerification();
                        },
                        child: const Text('Continue'))
                  ],
                ),
              ),
            ),
          );
        });
  }

  TextFormField otpInput() {
    final OtpController _controller = Get.find();
    return TextFormField(
      controller: _controller.otpController,
      decoration: const InputDecoration(hintText: 'EnterPhone'),
      keyboardType: TextInputType.number,
    );
  }
}
