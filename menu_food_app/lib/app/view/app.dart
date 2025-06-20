import 'package:flutter/material.dart';
import 'package:menu_food_app/features/menu/repository/food_repository.dart';
import 'package:menu_food_app/features/menu/view/food_list_page.dart';
import 'package:menu_food_app/l10n/arb/app_localizations.dart';

class MenuFoodApp extends StatelessWidget {
  final FoodRepository foodRepository;
  const MenuFoodApp({super.key, required this.foodRepository});

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
      home: FoodListPage(
        foodRepository: foodRepository,
      ),
    );
  }
}
