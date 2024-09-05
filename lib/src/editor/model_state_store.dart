import 'dart:async';

import 'model_state.dart';

class ModelStateStore {
  ModelState currentState = ModelState();

  final _stateController = StreamController<ModelState>.broadcast();
  Stream<ModelState> get state => _stateController.stream;

  final _toggleControlsController = StreamController<dynamic>.broadcast();
  Stream<dynamic> get toggleControlsStream => _toggleControlsController.stream;

  void updateState(
    ModelState Function(ModelState) producer,
  ) {
    final newState = producer(currentState);
    currentState = newState;
    _stateController.sink.add(newState);
  }

  void toggleControlls() {
    _toggleControlsController.add('');
  }

  void dispose() {
    _stateController.close();
    _toggleControlsController.close();
  }
}
