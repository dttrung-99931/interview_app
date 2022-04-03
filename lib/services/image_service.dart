import 'package:get/get.dart';
import 'package:interview_app/constants/app_config.dart';
import 'package:interview_app/exceptions/no_internet.dart';
import 'package:interview_app/models/image/images_response.dart';
import 'package:interview_app/utils/netwrok_utils.dart';

class ImageService extends GetConnect {
  ImageService() {
    httpClient.baseUrl = AppConfig.baseApiUrl;
  }

  Future<ImagesResponse> getImages({bool requireInternet = true}) async {
    await _handleRequreInternet(requireInternet);

    var response = await httpClient.get<ImagesResponse>(
      'get_memes',
      decoder: (map) => ImagesResponse.fromMap(map),
    );
    return response.body!;
  }

  Future<void> _handleRequreInternet(bool requireInternet) async {
    if (requireInternet) await NetworkUtils.ensureInternetConnection();
  }
}
