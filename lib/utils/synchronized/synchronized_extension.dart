import 'dart:async';
import 'synchronized_extension_impl.dart' as impl;

extension SynchronizedLock on Object {
  Future<T> synchronized<T>(FutureOr<T> Function() computation,
      {Duration? timeout}) {
    return impl.objectSynchronized<T>(this, computation, timeout: timeout);
  }
}
