import 'package:dart_mappable/dart_mappable.dart';
import 'package:pixabay_api_test/features/images/domain/entities/image_entity.dart';

part 'image_model.mapper.dart';

/// Модель изображения, используемая для работы с данными.
///
/// `ImageModel` наследует от `ImageEntity` и предоставляет дополнительные возможности
/// для маппирования данных с помощью пакета `dart_mappable`.
///
/// Этот класс используется для работы с изображениями, предоставляемыми API
/// или другими источниками данных, и преобразует данные в формат `ImageEntity`.
@MappableClass()
class ImageModel extends ImageEntity with ImageModelMappable {
  /// Создает новый экземпляр `ImageModel`.
  ///
  /// Принимает обязательные параметры:
  /// - `largeImageURL`: URL большого изображения.
  /// - `webformatURL`: URL изображения в веб-формате.
  /// - `likes`: количество лайков изображения.
  /// - `views`: количество просмотров изображения.
  /// - `tags`: теги изображения, разделенные запятыми.
  ImageModel(
      {required super.largeImageURL,
      required super.webformatURL,
      required super.likes,
      required super.views,
      required super.tags});

  /// Преобразует текущую модель изображения в сущность `ImageEntity`.
  ///
  /// Создает экземпляр `ImageEntity` с теми же данными, что и у текущего объекта.
  ///
  /// Возвращает `ImageEntity`, содержащую данные изображения.
  ImageEntity toEntity() {
    return ImageEntity(
        tags: tags,
        webformatURL: webformatURL,
        likes: likes,
        views: views,
        largeImageURL: largeImageURL);
  }
}
