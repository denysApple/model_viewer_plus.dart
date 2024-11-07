import 'dart:async';

import 'package:rxdart/subjects.dart';

import 'model_state.dart';

class ModelStateStore {
  final _stateController = BehaviorSubject<ModelState>();
  final _exportClicks = PublishSubject<bool>();
  final _saveClicks = PublishSubject<bool>();

  Stream<ModelState> get state => _stateController.stream;

  Stream<bool> get exportClicks => _exportClicks.stream;

  Stream<bool> get saveClicks => _saveClicks.stream;

  ModelStateStore() {
    print('ModelStateStore: Instance created');
  }

  void updateState(ModelState Function(ModelState) producer,) {
    final currentState = _stateController.valueOrNull ?? ModelState();
    final newState = producer(currentState);
    try {
      _stateController.sink.add(newState);
      print('ModelStateStore: State updated to $newState');
    } catch (e) {
      print('ModelStateStore: Error updating state: $e');
    }
  }

  void dispose() {
    _stateController.close();
    _exportClicks.close();
    _saveClicks.close();
    print('ModelStateStore: Instance disposed');
  }

  void export() {
    _exportClicks.sink.add(true);
  }

  void save() {
    _saveClicks.sink.add(true);
  }

}
