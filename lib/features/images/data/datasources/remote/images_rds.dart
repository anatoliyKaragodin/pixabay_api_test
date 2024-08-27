import 'package:pixabay_api_test/features/images/data/models/image_model.dart';

/// Абстрактный класс для источника данных изображений.
///
/// `ImagesRds` определяет контракт для получения изображений из удаленного источника данных.
/// Все реализации этого класса должны предоставить логику для получения списка изображений
/// в формате `ImageModel` для указанной страницы.
///
/// Используется для получения данных изображений, которые затем могут быть преобразованы
/// в объекты `ImageEntity` или использованы напрямую.
///
/// Методы:
/// - `getImages(int page)`: Получает список изображений для заданной страницы.
abstract class ImagesRds {
  /// Получает список изображений для указанной страницы.
  ///
  /// [page] - номер страницы для загрузки изображений.
  ///
  /// Возвращает `Future<List<ImageModel>>`, представляющий список изображений
  /// для указанной страницы. Результат оборачивается в `Future` для асинхронного
  /// выполнения запроса.
  Future<List<ImageModel>> getImages(int page);
}