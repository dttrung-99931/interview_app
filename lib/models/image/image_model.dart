import 'dart:convert';

class ImageModel {
  final String id;
  final String name;
  final String url;
  final int width;
  final int height;

  ImageModel(this.id, this.name, this.url, this.width, this.height);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'width': width,
      'height': height,
    };
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      map['id'] ?? '',
      map['name'] ?? '',
      map['url'] ?? '',
      map['width']?.toInt() ?? 0,
      map['height']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModel.fromJson(String source) => ImageModel.fromMap(json.decode(source));
}
