import 'package:dio/dio.dart';
import 'package:mozprop/model/models.dart';

class PropertyTypeRepository {
  Future<List<PropertyType>> getAll() async {
    try {
      final response = await Dio()
          .get<List>('http://localhost:8000/api/v1/property/property_types/');
      return (response.data as List)
          .map<PropertyType>(
              (propertyType) => PropertyType.fromJson(propertyType))
          .toList()
        ..sort((a, b) => a.type.toLowerCase().compareTo(b.type.toLowerCase()));
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }
}
