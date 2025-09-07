import 'package:flutter/foundation.dart';

abstract class ValueNotifierObserver {
  const ValueNotifierObserver();
  @mustCallSuper
  void onCreate(ValueNotifier notifier) {}

  @mustCallSuper
  void onError(ValueNotifier notifier, Object error, StackTrace stackTrace) {}

  @mustCallSuper
  void log(ValueNotifier notifier, String message) {}

  @mustCallSuper
  void onDispose(ValueNotifier notifier) {}

  @mustCallSuper
  void onState(ValueNotifier notifier) {}
}
