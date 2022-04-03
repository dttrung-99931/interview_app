import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/screens/screen2/screen2.dart';

class Screen1Controller extends GetxController {
  final nameEdtController = TextEditingController();

  void onNextSceenPressed() {
    var name = nameEdtController.text;
    if (name.isNotEmpty) {
      Get.toNamed('/$Screen2', arguments: name);
    } else {
      Get.showSnackbar(
        const GetSnackBar(
          message: 'Please enter your name!',
          duration: Duration(
            seconds: 1,
          ),
        ),
      );
    }
  }
}
