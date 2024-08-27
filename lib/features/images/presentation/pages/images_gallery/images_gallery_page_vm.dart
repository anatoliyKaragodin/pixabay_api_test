import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:developer' as dev;

import '../../../../../core/di/di_container.dart';
import '../../../domain/entities/image_entity.dart';
import '../../../domain/usecases/get_images.dart';
import '../image_fullscreen/image_fullscreen_page.dart';
import 'image_gallery_page_state.dart';

/// Провайдер состояния для страницы галереи изображений.
///
/// `imagesGalleryPageVmProvider` создает экземпляр `ImagesGalleryPageVm`,
/// который управляет состоянием страницы галереи изображений.
final imagesGalleryPageVmProvider =
    StateNotifierProvider<ImagesGalleryPageVm, ImageGalleryPageState>(
        (ref) => ImagesGalleryPageVm(getIt()));

/// ViewModel для страницы галереи изображений.
///
/// `ImagesGalleryPageVm` управляет загрузкой изображений, фильтрацией по тегам
/// и навигацией к просмотру изображений в полноэкранном режиме. Он также
/// обрабатывает асинхронную загрузку новых страниц изображений при прокрутке.
class ImagesGalleryPageVm extends StateNotifier<ImageGalleryPageState> {
  /// Создает новый экземпляр `ImagesGalleryPageVm`.
  ///
  /// Принимает экземпляр `GetImages`, используемый для получения изображений
  /// с удаленного API. Начальное состояние содержит пустые списки изображений.
  ImagesGalleryPageVm(this._getImagesUC)
      : super(ImageGalleryPageState(shownImages: [], allImages: [])) {
    _init();
  }

  /// UseCase для получения изображений.
  final GetImages _getImagesUC;

  /// Номер текущей страницы для пагинации.
  int _page = 1;

  /// Флаг, указывающий, завершена ли загрузка изображений.
  bool _isLoaded = true;

  /// Флаг, указывающий, выполняется ли поиск изображений.
  bool _showSearchImages = false;

  /// Инициализирует загрузку изображений при создании ViewModel.
  ///
  /// Загружает первую страницу изображений и обновляет состояние
  /// с загруженными данными.
  Future<void> _init() async {
    _isLoaded = false;
    final images = await _getImagesUC(_page).whenComplete(() {
      _page++;
      _isLoaded = true;
    });

    state = state.copyWith(allImages: images, shownImages: images);

    dev.log(images.first.toString());
  }

  /// Обрабатывает изменения в поисковой строке.
  ///
  /// Фильтрует изображения по тегам, если введено значение, или
  /// показывает все изображения, если поле поиска пустое.
  void onSearchChanged(String value) {
    if (value.isNotEmpty) {
      _showSearchImages = true;
    } else {
      _showSearchImages = false;
    }

    List<ImageEntity> filteredImages = value.isEmpty
        ? state.allImages
        : state.allImages.where((image) {
            List<String> imageTags =
                image.tags.split(',').map((tag) => tag.trim()).toList();
            return imageTags.any((tag) => tag == value);
          }).toList();

    state = state.copyWith(shownImages: filteredImages);
  }

  /// Загружает следующую страницу изображений при прокрутке до конца.
  ///
  /// Загружает дополнительные изображения, если не выполняется поиск, и
  /// обновляет состояние, добавляя новые изображения к уже загруженным.
  Future<void> loadNextPage() async {
    if (_isLoaded && !_showSearchImages) {
      dev.log(_page.toString());

      _isLoaded = false;
      final images = await _getImagesUC(_page).whenComplete(() {
        _page++;
        _isLoaded = true;
      });

      state = state.copyWith(
          allImages: [...state.allImages, ...images],
          shownImages: [...state.allImages, ...images]);
    }
  }

  /// Открывает полноэкранное изображение.
  ///
  /// Навигация осуществляется с помощью `PageRouteBuilder` для анимации
  /// перехода к полноэкранному просмотру изображения.
  void openFullscreenImage(BuildContext context, ImageEntity image) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ImageFullscreenPage(image: image),
      ),
    );
  }
}
