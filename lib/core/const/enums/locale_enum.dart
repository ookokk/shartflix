import 'package:flutter/material.dart';

enum Locales {
  de(Locale('de', 'DE')),
  en(Locale('en', 'US')),
  tr(Locale('tr', 'TR'));

  const Locales(this.locale);

  final Locale locale;
}
