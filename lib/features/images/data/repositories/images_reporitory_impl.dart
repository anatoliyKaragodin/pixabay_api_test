import 'package:pixabay_api_test/features/images/data/datasources/remote/images_rds.dart';
import 'package:pixabay_api_test/features/images/domain/entities/image_entity.dart';
import 'package:pixabay_api_test/features/images/domain/repository/images_repository.dart';

/// Реализация репозитория для работы с изображениями.
///
/// `ImagesReporitoryImpl` реализует интерфейс `ImagesRepository` и предоставляет
/// логику для получения изображений, используя удаленный источник данных.
///
/// Эта реализация принимает источник данных `ImagesRds` и использует его для
/// получения изображений и преобразования их в сущности `ImageEntity`.
class ImagesReporitoryImpl implements ImagesRepository {
  /// Источник данных для получения изображений.
  final ImagesRds _rds;

  /// Создает новый экземпляр `ImagesReporitoryImpl`.
  ///
  /// Принимает обязательный параметр:
  /// - `_rds`: экземпляр `ImagesRds`, который будет использоваться для получения изображений.
  ImagesReporitoryImpl(this._rds);

  @override
  Future<List<ImageEntity>> getImages(int page) async {
    // Получение списка изображений из источника данных.
    final result = await _rds.getImages(page);

    // Преобразование полученных данных в список сущностей `ImageEntity`.
    final entities = result.map((e) => e.toEntity()).toList();

    return entities;
  }
}
