import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class Localized implements WidgetsLocalizations {
  const Localized();

  static newDelegate(Locale locale) => GeneratedLocalizationsDelegate(locale);

  static const GeneratedLocalizationsDelegate delegate =
      GeneratedLocalizationsDelegate(null);

  static Localized of(BuildContext context) => Localizations.of<Localized>(
        context,
        Localized,
      );

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get PackageTitle => "Localization Generator";
  String get PackageDescription => "Use to generate localization code from json file";
}

class $en extends Localized {
  const $en();
}

class $zh extends Localized {
  const $zh();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get PackageTitle => "多國語系產生器";
  String get PackageDescription => "從json檔案產出多國語系的程式";
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<Localized> {
  final Locale locale;

  const GeneratedLocalizationsDelegate(this.locale);

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("en", ""),
      Locale("zh", ""),
    ];
  }

  LocaleListResolutionCallback listResolution({Locale fallback}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale fallback}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported);
    };
  }

  @override
  Future<Localized> load(Locale locale) {
    final String lang = getLang(this.locale ?? locale);
    if (lang != null) {
      switch (lang) {
        case "en":
          return SynchronousFuture<Localized>(const $en());
        case "zh":
          return SynchronousFuture<Localized>(const $zh());
        default:
        // NO-OP.
      }
    }
    return SynchronousFuture<Localized>(const Localized());
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) =>
      old.locale != this.locale;

  ///
  /// Internal method to resolve a locale from a list of locales.
  ///
  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported) {
    if (!_isSupported(locale)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  ///
  /// Returns true if the specified locale is supported, false otherwise.
  ///
  bool _isSupported(Locale locale) {
    if (locale == null) {
      return false;
    }
    if (supportedLocales.contains(locale)) {
      return true;
    }

    for (Locale supportedLocale in supportedLocales) {
      if (supportedLocale.countryCode == null ||
          supportedLocale.countryCode.isEmpty) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}

String getLang(Locale l) => l == null
    ? null
    : l.countryCode != null && l.countryCode.isEmpty
        ? l.languageCode
        : l.toString();
