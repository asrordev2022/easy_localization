import 'package:flutter/material.dart';

List<Locale> localesList = const [
  Locale('en'),
  Locale('uz'),
  Locale('ru'),
];

const Locale startLocale = Locale('en');

const String languagesPath = "assets/translations";

Locale fallbackLocale = const Locale('ru');
