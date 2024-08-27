import 'package:dart_mappable/dart_mappable.dart';

import '../../../domain/entities/image_entity.dart';

part 'image_gallery_page_state.mapper.dart';

/// Состояние страницы галереи изображений.
///
/// `ImageGalleryPageState` представляет текущее состояние страницы галереи изображений.
/// Оно содержит списки отображаемых (`shownImages`) и всех загруженных (`allImages`) изображений.
/// 
/// Класс поддерживает автоматическое маппирование с помощью пакета `dart_mappable`.
@MappableClass()
class ImageGalleryPageState with ImageGalleryPageStateMappable {
  /// Список изображений, которые отображаются на текущий момент.
  /// 
  /// Этот список фильтруется на основе поиска или других критериев.
  final List<ImageEntity> shownImages;

  /// Список всех изображений, загруженных на страницу.
  /// 
  /// Включает все изображения, полученные с сервера, независимо от того,
  /// отображаются они в данный момент или нет.
  final List<ImageEntity> allImages;

  /// Создает новый экземпляр `ImageGalleryPageState`.
  ///
  /// Принимает обязательные параметры:
  /// - `shownImages`: список изображений, которые будут отображаться.
  /// - `allImages`: полный список загруженных изображений.
  ImageGalleryPageState({required this.shownImages, required this.allImages});
}
