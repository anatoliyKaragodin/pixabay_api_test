import 'package:flutter/material.dart';

import '../../../domain/entities/image_entity.dart';

/// Страница для отображения изображения в полноэкранном режиме.
///
/// `ImageFullscreenPage` позволяет пользователю просматривать изображение на весь экран.
/// Для возврата на предыдущую страницу, пользователь может коснуться изображения.
///
/// Использует `Hero` для плавной анимации перехода между страницами.
class ImageFullscreenPage extends StatelessWidget {
  /// Изображение, которое будет отображаться на этой странице.
  final ImageEntity image;

  /// Создает новый экземпляр `ImageFullscreenPage`.
  ///
  /// Принимает обязательный параметр:
  /// - `image`: объект `ImageEntity`, который содержит информацию о изображении, включая URL для загрузки.
  const ImageFullscreenPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Hero(
              tag: image.largeImageURL,
              child: Image.network(image.largeImageURL),
            ),
          ),
        ),
      ),
    );
  }
}
