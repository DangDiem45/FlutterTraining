import 'package:flutter/material.dart';
import 'package:menu_food_app/features/menu/view/food_list_page.dart';
import 'package:menu_food_app/l10n/arb/app_localizations.dart';

class MenuFoodApp extends StatelessWidget {
  const MenuFoodApp({super.key});

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
      home: const FoodListPage(),
    );
  }
}
