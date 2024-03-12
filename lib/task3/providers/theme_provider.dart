import 'dart:async';

class ThemeCubit {
  late final StreamController<bool> _isDarkStreamController;

  ThemeCubit() {
    _isDarkStreamController = StreamController<bool>.broadcast();
  }

  Stream<bool> get stream => _isDarkStreamController.stream;
  bool isDark = false;

  void changeTheme() {
    isDark = !isDark;
    _isDarkStreamController.add(isDark);
  }

  void dispose() {
    _isDarkStreamController.close();
  }
}
