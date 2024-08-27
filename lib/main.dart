import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pixabay_api_test/core/di/di_container.dart';

import 'app.dart';

/// Главная функция, с которой начинается выполнение приложения.
///
/// Функция `main` выполняет следующие действия:
/// 1. Инициализирует зависимостей через вызов `setupDI()`.
/// 2. Запускает приложение с использованием `ProviderScope`, что позволяет
///    использовать `flutter_riverpod` для управления состоянием на всех уровнях
///    приложения.
///
/// `ProviderScope` необходим для работы с провайдерами и состоянием, определенными
/// в приложении через `flutter_riverpod`.
void main() {
  setupDI();
  runApp(const ProviderScope(child: App()));
}
