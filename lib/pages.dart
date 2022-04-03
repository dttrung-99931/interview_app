import 'package:get/get.dart';
import 'package:interview_app/screens/screen2/screen2.dart';
import 'package:interview_app/services/image_service.dart';

import 'controllers/screen1_controller.dart';
import 'controllers/screen2_controller.dart';
import 'screens/screen1/screen1.dart';

final pages = [
  GetPage(
    name: '/$Screen1',
    page: () => const Screen1(),
    binding: BindingsBuilder(() {
      Get.put(Screen1Controller());
    }),
  ),
  GetPage(
    name: '/$Screen2',
    page: () => Screen2(username: Get.arguments),
    binding: BindingsBuilder(() {
      Get.put(ImageService());
      Get.put(Screen2Controller());
    }),
  ),
];
