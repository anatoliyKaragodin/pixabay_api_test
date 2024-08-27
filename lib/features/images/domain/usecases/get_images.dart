import 'package:pixabay_api_test/core/usecases/usecase.dart';
import 'package:pixabay_api_test/features/images/domain/entities/image_entity.dart';
import 'package:pixabay_api_test/features/images/domain/repository/images_repository.dart';

class GetImages extends UseCase<List<ImageEntity>, int> {
  final ImagesRepository _repository;

  GetImages(this._repository);

  @override
  Future<List<ImageEntity>> call(int params) async {
    return _repository.getImages(params);
  }
}
