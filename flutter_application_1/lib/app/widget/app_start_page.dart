import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/provider/app_start_provider.dart';
import 'package:flutter_application_1/app/state/app_start_state.dart';
import 'package:flutter_application_1/feature/auth/widget/sign_up_page.dart';
import 'package:flutter_application_1/feature/home/widget/home_page.dart';
import 'package:flutter_application_1/shared/widget/connection_unavailable_widget.dart';
import 'package:flutter_application_1/shared/widget/loading_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppStartPage extends ConsumerWidget {
  const AppStartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appStartProviderProvider);

    return state.when(
      data: (data) {
        return data.maybeWhen(
          initial: () => const LoadingWidget(),
          authenticated: () => const HomePage(),
          unauthenticated: SignUpPage.new,
          internetUnavailable: () => const ConnectionUnavailableWidget(),
          orElse: () => const LoadingWidget(),
        );
      },
      error: (e, st) => const LoadingWidget(),
      loading: () => const LoadingWidget()
    );
  }
}