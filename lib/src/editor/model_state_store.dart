import 'dart:async';

import 'package:rxdart/subjects.dart';

import 'model_state.dart';

class ModelStateStore {
  ModelState currentState = ModelState();

  final _stateController = BehaviorSubject<ModelState>();
  Stream<ModelState> get state => _stateController.stream;

  void updateState(
    ModelState Function(ModelState) producer,
  ) {
    final newState = producer(currentState);
    currentState = newState;
    _stateController.sink.add(newState);
  }

  void dispose() {
    _stateController.close();
  }
}
