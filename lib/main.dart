import 'package:dependency_injection/home.dart';
import 'package:dependency_injection/services/constants/easyLocalization_constants.dart';
import 'package:dependency_injection/services/serviceLocator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setupLocator();
  runApp(EasyLocalization(
      startLocale: startLocale,
      supportedLocales: localesList,
      path: languagesPath,
      child: const RunApp()));
}

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const Home(),
    );
  }
}
