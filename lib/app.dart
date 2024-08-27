import 'package:flutter/material.dart';
import 'package:pixabay_api_test/features/images/presentation/pages/images_gallery/images_gallery_page.dart';

/// Основной виджет приложения.
///
/// `App` является корневым виджетом приложения. Он определяет глобальные
/// настройки, такие как тема приложения и домашняя страница.
///
/// Использует `MaterialApp` для создания приложения с материал-дизайном.
/// Главная страница (`home`) устанавливается на `ImagesGalleryPage`.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const ImagesGalleryPage(),
    );
  }
}
