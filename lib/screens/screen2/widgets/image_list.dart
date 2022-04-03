import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:interview_app/controllers/screen2_controller.dart';
import 'package:flutter/material.dart';

import 'image_item.dart';

class ImageList extends GetWidget<Screen2Controller> {
  final ScrollController scrollController;

  ImageList({
    Key? key,
    ScrollController? scrollController,
  })  : scrollController = scrollController ?? ScrollController(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => !controller.isLoading
          ? ListView(
              controller: scrollController,
              children: [
                ...controller.images.map((image) => ImageItem(image)),
              ],
            )
          : const Center(
              child: SizedBox.square(
                  dimension: 24, child: CircularProgressIndicator()),
            ),
    );
  }
}

