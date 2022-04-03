import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:interview_app/constants/app_colors.dart';
import 'package:interview_app/constants/app_styles.dart';
import 'package:interview_app/controllers/screen2_controller.dart';

import 'widgets/image_list.dart';

class Screen2 extends GetWidget<Screen2Controller> {
  final _scrollController = ScrollController();
  final String username;

  Screen2({required this.username, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Screen 2', style: AppStyles.title),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, size: 32),
          onPressed: Get.back,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeIn,
          );
        },
        child: Image.asset('assets/images/ic_up.png'),
        backgroundColor: AppColors.greyDark,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // Don't awaiting to make fresh indicator hidden immediately after it showing
          controller.loadImages();
        },
        child: Column(
          children: [
            const SizedBox(height: 8),
            Text(
              'Welcome : $username',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ImageList(scrollController: _scrollController),
            ),
          ],
        ),
      ),
    );
  }
}
