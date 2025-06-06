import 'package:flutter/material.dart';
// import 'package:my_daily_tasks/counter/counter.dart';
import 'package:my_daily_tasks/features/view/home_page.dart';
import 'package:my_daily_tasks/l10n/arb/app_localizations.dart';

class MyTaskApp extends StatelessWidget {
  const MyTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
