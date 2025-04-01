// separating the main app design from config file in main

import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    return Scaffold(
      body: Center(
        child: Text(appLocalizations.welcome!),
      ),
    );
  }
}
