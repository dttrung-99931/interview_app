import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/constants/app_colors.dart';
import 'package:interview_app/controllers/screen1_controller.dart';

class NameTextField extends GetWidget<Screen1Controller> {
  const NameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.nameEdtController,
      decoration: InputDecoration(
        hintText: 'Your name',
        hintStyle: const TextStyle(
          color: AppColors.hint,
        ),
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
      ),
      onEditingComplete: controller.onNextSceenPressed,
    );
  }
}
