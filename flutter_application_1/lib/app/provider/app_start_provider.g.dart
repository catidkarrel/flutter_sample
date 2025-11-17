// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_start_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppStartProvider)
const appStartProviderProvider = AppStartProviderProvider._();

final class AppStartProviderProvider
    extends $AsyncNotifierProvider<AppStartProvider, AppStartState> {
  const AppStartProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appStartProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appStartProviderHash();

  @$internal
  @override
  AppStartProvider create() => AppStartProvider();
}

String _$appStartProviderHash() => r'7cd3e33fbfb971d3ed00e54909ff3409e6c8ef9f';

abstract class _$AppStartProvider extends $AsyncNotifier<AppStartState> {
  FutureOr<AppStartState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AppStartState>, AppStartState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AppStartState>, AppStartState>,
              AsyncValue<AppStartState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
