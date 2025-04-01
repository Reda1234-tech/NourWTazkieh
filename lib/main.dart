import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

import 'localization/app_localizations.dart';

import './util/theme/app_theme.dart';
import './util/constants/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize preferences and get saved language
  final prefs = await SharedPreferences.getInstance();
  final savedLanguage = prefs.getString('language');

  runApp(App(
    savedLanguage: savedLanguage,
  ));
}

class App extends StatefulWidget {
  final String? savedLanguage;

  const App({this.savedLanguage, super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Locale? _locale;

  @override
  void initState() {
    super.initState();
    _initLanguage();
    // changeLanguage(Locale('en')); // for quick testing
  }

  Future<void> _initLanguage() async {
    if (widget.savedLanguage != null) {
      // Use saved language
      setState(() {
        _locale = Locale(widget.savedLanguage!);
      });
    } else {
      // Auto-detect device locale if no saved preference
      final deviceLocale = ui.window.locale;

      if (deviceLocale.languageCode == 'ar') {
        setState(() {
          _locale = const Locale('ar');
        });
      } else {
        setState(() {
          _locale = const Locale('en');
        });
      }
    }
  }

  void changeLanguage(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', locale.languageCode);
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // Auto-switch between light & dark mode

      title: AppStrings
          .appTitle, // not use applocalization bcoz it throws error since it is not initialized yet

      locale: _locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final isArabic = Localizations.localeOf(context).languageCode == 'ar';
    print(isArabic);

    return Scaffold(
      body: Center(
        child: Text(appLocalizations.welcome!),
      ),
    );
  }
}

