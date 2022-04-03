import 'dart:convert';
import 'image_model.dart';

class ImagesModel  {
  final List<ImageModel> memes;

  ImagesModel(this.memes) : super();

  Map<String, dynamic> toMap() {
    return {
      'memes': memes.map((x) => x.toMap()).toList(),
    };
  }

  factory ImagesModel.fromMap(Map<String, dynamic> map) {
    return ImagesModel(
      List<ImageModel>.from(map['memes']?.map((x) => ImageModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ImagesModel.fromJson(String source) => ImagesModel.fromMap(json.decode(source));
}
