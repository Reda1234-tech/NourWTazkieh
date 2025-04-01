import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Nour W Tazkieh',
      'welcome': 'Welcome!',
      'language': 'Language',
      'english': 'English',
      'arabic': 'Arabic',
      'change_language': 'Change Language',
      'current_language': 'Current Language: English',
      'home_content': 'This is a simple multilingual app.',
    },
    'ar': {
      'title': 'نور وتزكيه',
      'welcome': 'مرحباً!',
      'language': 'اللغة',
      'english': 'الإنجليزية',
      'arabic': 'العربية',
      'change_language': 'تغيير اللغة',
      'current_language': 'اللغة الحالية: العربية',
      'home_content': 'هذا تطبيق بسيط متعدد اللغات.',
    },
  };

  String? get title => _localizedValues[locale.languageCode]!['title'];
  String? get welcome => _localizedValues[locale.languageCode]!['welcome'];
  String? get language => _localizedValues[locale.languageCode]!['language'];
  String? get english => _localizedValues[locale.languageCode]!['english'];
  String? get arabic => _localizedValues[locale.languageCode]!['arabic'];
  String? get changeLanguageText =>
      _localizedValues[locale.languageCode]!['change_language'];
  String? get currentLanguage =>
      _localizedValues[locale.languageCode]!['current_language'];
  String? get homeContent =>
      _localizedValues[locale.languageCode]!['home_content'];
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    Intl.defaultLocale = locale.languageCode;
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
