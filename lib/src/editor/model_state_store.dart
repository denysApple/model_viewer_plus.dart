import 'dart:async';

import 'model_state.dart';

class ModelStateStore {
  final _stateController = StreamController<ModelState>.broadcast();
  Stream<ModelState> get state => _stateController.stream;

  final _toggleControlsController = StreamController<dynamic>.broadcast();
  Stream<dynamic> get toggleControlsStream => _toggleControlsController.stream;

  void updateState(ModelState state) => _stateController.sink.add(state);

  void toggleControlls() {
    _toggleControlsController.add('');
  }

  void dispose() {
    _stateController.close();
    _toggleControlsController.close();
  }
}
