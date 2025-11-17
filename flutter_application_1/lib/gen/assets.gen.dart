// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

class $AssetsEnvGen {
  const $AssetsEnvGen();

  /// File path: assets/env/.env.development
  String get aEnvDevelopment => 'assets/env/.env.development';

  /// File path: assets/env/.env.production
  String get aEnvProduction => 'assets/env/.env.production';

  /// File path: assets/env/.env.staging
  String get aEnvStaging => 'assets/env/.env.staging';

  /// List of all assets
  List<String> get values => [aEnvDevelopment, aEnvProduction, aEnvStaging];
}

class $AssetsLangGen {
  const $AssetsLangGen();

  /// File path: assets/lang/en.json
  String get en => 'assets/lang/en.json';

  /// List of all assets
  List<String> get values => [en];
}

class Assets {
  const Assets._();

  static const $AssetsEnvGen env = $AssetsEnvGen();
  static const $AssetsLangGen lang = $AssetsLangGen();
}
