import 'dart:math';

import 'package:get_it/get_it.dart';

import 'network_service.dart';

GetIt getIt = GetIt.I;

void setupLocator() {
  getIt.registerSingleton<NetworkImpl>(NetworkImpl());
  getIt.registerFactory<Random>(() => Random());
  // getIt.registerSingleton<NetworkImpl>(NetworkImpl());
}
