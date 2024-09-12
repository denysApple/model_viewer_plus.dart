import 'dart:async';

import 'package:rxdart/subjects.dart';

import 'model_state.dart';

class ModelStateStore {
  final _stateController = BehaviorSubject<ModelState>();
  Stream<ModelState> get state => _stateController.stream;

  void updateState(
    ModelState Function(ModelState) producer,
  ) {
    final currentState = _stateController.valueOrNull ?? ModelState();
    final newState = producer(currentState);
    _stateController.sink.add(newState);
  }

  void dispose() {
    _stateController.close();
  }
}
