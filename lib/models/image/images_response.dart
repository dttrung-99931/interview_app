import 'dart:convert';

import 'images_model.dart';

class ImagesResponse {
  final bool success;
  final ImagesModel data;

  ImagesResponse(this.success, this.data);

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'data': data.toMap(),
    };
  }

  factory ImagesResponse.fromMap(Map<String, dynamic> map) {
    return ImagesResponse(
      map['success'] ?? false,
      ImagesModel.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ImagesResponse.fromJson(String source) => ImagesResponse.fromMap(json.decode(source));
}
