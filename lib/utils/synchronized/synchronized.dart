import 'dart:async';

import 'basic_lock.dart';
import 'reentrant_lock.dart';

abstract class Lock {
  factory Lock({bool reentrant = false}) {
    if (reentrant == true) {
      return ReentrantLock();
    } else {
      return BasicLock();
    }
  }

  Future<T> synchronized<T>(FutureOr<T> Function() computation,
      {Duration? timeout});

  /// returns true if the lock is currently locked.
  bool get locked;

  /// for reentrant, demo whether we are currently in the synchronized section.
  /// for non reentrant, it returns the [locked] status.
  bool get inLock;
}