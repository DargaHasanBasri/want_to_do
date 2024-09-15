import 'package:want_to_do/export.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(AppRoutes.new);
}