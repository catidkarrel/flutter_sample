import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

base class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderObserverContext context, Object? previousValue, Object? newValue) {
    final provider = context.provider;
    if (newValue is StateController<int>) {
      print('[${provider.name ?? provider.runtimeType}] value: ${newValue.state}');
    }
  }
}