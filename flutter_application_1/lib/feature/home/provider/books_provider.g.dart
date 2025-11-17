// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BooksNotifier)
const booksProvider = BooksNotifierProvider._();

final class BooksNotifierProvider
    extends $NotifierProvider<BooksNotifier, BooksState> {
  const BooksNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'booksProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$booksNotifierHash();

  @$internal
  @override
  BooksNotifier create() => BooksNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BooksState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BooksState>(value),
    );
  }
}

String _$booksNotifierHash() => r'd8c0afcc9f126833430908b7515d72ccceca8e3c';

abstract class _$BooksNotifier extends $Notifier<BooksState> {
  BooksState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<BooksState, BooksState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BooksState, BooksState>,
              BooksState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
