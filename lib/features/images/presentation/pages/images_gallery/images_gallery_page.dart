import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'images_gallery_page_vm.dart';

/// Виджет, который отображает галерею изображений, полученных из удаленного источника.
/// 
/// `ImagesGalleryPage` - это страница, который слушает провайдер состояния
/// и отображает сетку изображений. Пользователи могут искать изображения с помощью строки поиска,
/// а также загружать больше изображений, прокручивая страницу до конца.
/// 
/// Этот виджет использует Flutter Riverpod для управления состоянием и обрабатывает асинхронную
/// загрузку данных, фильтрацию поиска и навигацию к просмотру изображения в полноэкранном режиме.
/// 
/// Пример использования:
/// 
/// ```dart
/// MaterialApp(
///   home: ImagesGalleryPage(),
/// );
/// ```
class ImagesGalleryPage extends ConsumerWidget {
  /// Создает новый экземпляр `ImagesGalleryPage`.
  const ImagesGalleryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = imagesGalleryPageVmProvider;
    final vmProvider = ref.watch(vm);
    final images = vmProvider.shownImages;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Галерея изображений'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Поиск изображений...',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => ref
                  .read(imagesGalleryPageVmProvider.notifier)
                  .onSearchChanged(value),
            ),
          ),
        ),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
            ref.read(imagesGalleryPageVmProvider.notifier).loadNextPage();
            return true;
          }
          return false;
        },
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _calculateCrossAxisCount(context),
            childAspectRatio: 1,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            final image = images[index];

            return GestureDetector(
              onTap: () =>
                  ref.read(vm.notifier).openFullscreenImage(context, image),
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text('${image.likes} лайков'),
                  subtitle: Text('${image.views} просмотров'),
                ),
                child: Hero(
                    tag: image.largeImageURL,
                    child:
                        Image.network(image.largeImageURL, fit: BoxFit.cover)),
              ),
            );
          },
        ),
      ),
    );
  }

  /// Рассчитывает количество столбцов в сетке на основе ширины экрана.
  /// 
  /// Этот метод делит ширину экрана на 150 пикселей, чтобы определить
  /// подходящее количество столбцов для сетки. Это гарантирует, что
  /// изображения будут отображаться в сетке с квадратным соотношением сторон.
  /// 
  /// Возвращает целое число, представляющее количество столбцов.
  int _calculateCrossAxisCount(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return (width / 150).floor();
  }
}
