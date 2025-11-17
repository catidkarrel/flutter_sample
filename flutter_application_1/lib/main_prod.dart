import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/start.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: Assets.env.aEnvProduction);

  await start();
}