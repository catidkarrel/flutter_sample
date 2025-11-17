import 'package:flutter_application_1/app/state/app_start_state.dart';
import 'package:flutter_application_1/feature/auth/provider/auth_provider.dart';
import 'package:flutter_application_1/feature/auth/repository/token_repository.dart';
import 'package:flutter_application_1/feature/auth/state/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_start_provider.g.dart';

@riverpod
class AppStartProvider extends _$AppStartProvider {
  late final TokenRepository _tokenRepository = ref.read(tokenRepositoryProvider);

  @override
  FutureOr<AppStartState> build() async {
    ref.onDispose(() {});

    final _authState = ref.watch(authNotifierProvider);

    if (_authState is AuthStateLoggedIn) {
      return AppStartState.authenticated();
    }

    if (_authState is AuthStateLoggedOut) {
      return AppStartState.unauthenticated();
    }

    final token = await _tokenRepository.fetchToken();
    if (token != null) {
      return AppStartState.authenticated();
    } else {
      return AppStartState.unauthenticated();
    }
  }
}