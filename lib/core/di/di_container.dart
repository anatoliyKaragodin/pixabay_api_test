import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pixabay_api_test/features/images/data/datasources/remote/images_rds.dart';
import 'package:pixabay_api_test/features/images/data/datasources/remote/images_rds_impl.dart';
import 'package:pixabay_api_test/features/images/data/repositories/images_reporitory_impl.dart';
import 'package:pixabay_api_test/features/images/domain/repository/images_repository.dart';
import 'package:pixabay_api_test/features/images/domain/usecases/get_images.dart';

/// Глобальный экземпляр GetIt для управления зависимостями.
final getIt = GetIt.instance;

/// Функция для настройки зависимостей приложения.
///
/// `setupDI` выполняет регистрацию всех необходимых зависимостей, включая
/// сетевые клиенты, источники данных, репозитории и use cases.
///
/// Применяется `registerLazySingleton`, чтобы создать зависимости только тогда,
/// когда они впервые запрашиваются.
void setupDI() async {
  final dio = Dio();

  // Регистрация клиента Dio для выполнения HTTP-запросов.
  getIt.registerLazySingleton(() => dio);

  // Регистрация удаленного источника данных для работы с изображениями.
  getIt.registerLazySingleton<ImagesRds>(() => ImagesRdsImpl(getIt()));

  // Регистрация репозитория для работы с изображениями.
  getIt.registerLazySingleton<ImagesRepository>(
      () => ImagesReporitoryImpl(getIt()));

  // Регистрация use case для получения изображений.
  getIt.registerLazySingleton(() => GetImages(getIt()));
}
