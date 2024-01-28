import 'package:equatable/equatable.dart';

class PropertyType extends Equatable {
  final String type;
  final String imageUrl;

  const PropertyType({required this.type, required this.imageUrl});

  factory PropertyType.fromJson(Map<String, dynamic> json) {
    return PropertyType(
      type: json['type'] as String,
      imageUrl: json['image_url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'image_url': imageUrl,
    };
  }

  @override
  List<Object?> get props => [type, imageUrl];

  @override
  String toString() => 'PropertyType(type: $type, imageUrl: $imageUrl)';
}
