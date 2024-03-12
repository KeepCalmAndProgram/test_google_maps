import 'dart:async';

class IncrementCubit {
  late final StreamController<int> _counterStreamController;

  IncrementCubit() {
    _counterStreamController = StreamController<int>.broadcast();
  }

  Stream<int> get stream => _counterStreamController.stream;
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    _counterStreamController.add(_counter);
  }

  void dispose() {
    _counterStreamController.close();
  }
}
