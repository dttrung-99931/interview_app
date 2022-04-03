import 'package:get/get.dart';
import 'package:interview_app/exceptions/unknown.dart';
import 'package:interview_app/models/image/image_model.dart';
import 'package:interview_app/models/image/images_response.dart';
import 'package:interview_app/services/image_service.dart';

class Screen2Controller extends GetxController {
  final _images = RxList<ImageModel>();
  List<ImageModel> get images => _images.toList();

  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  final _imageService = Get.find<ImageService>();

  @override
  void onInit() {
    super.onInit();
    loadImages();
  }

  Future<void> loadImages() async {
    _isLoading.value = true;
    await load(() async {
      ImagesResponse imagesRes = await _imageService.getImages();
      if (imagesRes.success) {
        // Sort meme images by width asc
        imagesRes.data.memes.sort(
          (img1, img2) => img1.width.compareTo(img2.width),
        );
        _images.assignAll(imagesRes.data.memes);
      } else {
        throw UnknownException('imagesRes.success false');
      }
    });
  }

  /// Load something and handle isLoading
  Future<void> load(Future<void> Function() loader) async {
    _isLoading.value = true;
    try {
      await loader();
    } catch (e) {
      /// Re-throw exception for error handlers handling
      /// SEE: [ErrorHandler]
      rethrow;
    } finally {
      _isLoading.value = false;
    }
  }
}
