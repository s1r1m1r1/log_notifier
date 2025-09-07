import 'package:flutter/foundation.dart';
import 'package:log_notifier/src/value_notifier_observer.dart';

class LogNotifier<T> extends ValueNotifier<T> {
  static ValueNotifierObserver? observer;
  LogNotifier(super.value) {
    observer?.onCreate(this);
  }

  void log(String message) {
    observer?.log(this, message);
  }

  @override
  void notifyListeners() {
    observer?.onState(this);
    super.notifyListeners();
  }

  void addError(Object error, StackTrace stackTrace) {
    observer?.onError(this, error, stackTrace);
  }

  @override
  void dispose() {
    observer?.onDispose(this);
    super.dispose();
  }
}
