import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/constants/app_colors.dart';
import 'package:interview_app/controllers/screen1_controller.dart';

class NextScreenButton extends GetWidget<Screen1Controller> {
  const NextScreenButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: controller.onNextSceenPressed,
      child: const Text(
        'Next Screen',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: AppColors.primaryColorDark,
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
