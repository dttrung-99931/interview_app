import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/constants/app_colors.dart';
import 'package:interview_app/constants/app_styles.dart';

import '../widgets/composed_button.dart';

class UIUtils {
  static Widget buildCenterProgressBar() {
    return Center(
      child: buildProgressBar(),
    );
  }

  static Widget buildProgressBar() {
    return Container(
      width: 24,
      height: 24,
      padding: const EdgeInsets.all(4),
      child: const CircularProgressIndicator(
        backgroundColor: Colors.white,
        strokeWidth: 2,
      ),
    );
  }

  static Widget buildErrorwidget(String msg) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(-4, 4),
                color: Colors.grey.shade400,
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'OPPS',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                msg,
                style: AppStyles.title.copyWith(
                  color: AppColors.primaryColor,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ComposedButtonWidget(
                  color: Colors.grey,
                  expanded: false,
                  iconData: Icons.keyboard_arrow_left,
                  title: 'Back',
                  onPressed: () {
                    Get.back();
                  },
                  iconAndTitleSpace: 4,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
