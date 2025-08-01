import 'package:final_project/core/di/injection_container.dart';
import 'package:final_project/features/ecommerce/presentation/home/bloc/home_bloc.dart';
import 'package:final_project/features/ecommerce/presentation/home/pages/home_page.dart';
import 'package:final_project/features/ecommerce/presentation/save/bloc/saved_bloc.dart';
import 'package:final_project/features/ecommerce/presentation/save/pages/save_item_page.dart';
import 'package:final_project/features/ecommerce/presentation/search/bloc/search_bloc.dart';
import 'package:final_project/features/ecommerce/presentation/search/bloc/search_event.dart';
import 'package:final_project/features/ecommerce/presentation/search/pages/search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => BlocProvider(
        create: (context) => sl<HomeBloc>(),
        child: const HomePage(),
      ),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) {
        final query = state.uri.queryParameters['q'] ?? '';
        if (query.isNotEmpty) {
          BlocProvider.of<SearchBloc>(context).add(
            PerformSearch(
              query,
              BlocProvider.of<HomeBloc>(context).state.products,
            ),
          );
        }
        return SearchPage();
      },
    ),
    GoRoute(
      path: '/saved',
      builder: (context, state) =>
          BlocProvider.value(value: sl<SavedBloc>(), child: SaveItemPage()),
    ),
  ],
);
