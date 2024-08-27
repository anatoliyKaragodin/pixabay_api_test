import 'package:dio/dio.dart';
import 'package:pixabay_api_test/features/images/data/models/image_model.dart';

import 'images_rds.dart';

class ImagesRdsImpl implements ImagesRds {
  final Dio _dio;
  final String _baseUrl = "https://pixabay.com/api/";
  final String _apiKey = "45642447-828020eecd18eb29543d00758";

  ImagesRdsImpl(this._dio);

  @override
  Future<List<ImageModel>> getImages(int page) async {
    try {
      final response = await _dio.get(
        _baseUrl,
        queryParameters: {
          'key': _apiKey,
          'page': page
        },
      );

      if (response.statusCode == 200) {
        List<ImageModel> images = (response.data['hits'] as List)
            .map((json) => ImageModelMapper.fromMap(json))
            .toList();

        return images;
      } else {
        throw Exception('Failed to load images');
      }
    } catch (e) {
      throw Exception('Failed to load images: $e');
    }
  }
}
