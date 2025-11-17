import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/widget/app.dart';
import 'package:flutter_application_1/shared/util/logger.dart';
import 'package:flutter_application_1/shared/util/platform_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> start() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final platformType = detectPlatformType();

  runApp(EasyLocalization(
    supportedLocales: const [Locale('en')],
    path: 'assets/lang',
    fallbackLocale: const Locale('en'),
    child: ProviderScope(overrides: [
      platformTypeProvider.overrideWithValue(platformType),
    ], observers: [
      Logger()
    ], child: const App(),)
  ));
}