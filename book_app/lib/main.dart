import 'package:book_app/core/util/app_router.dart';
import 'package:book_app/core/util/service_locator.dart';
import 'package:book_app/features/book/domain/usecases/fetch_feature_book.dart';
import 'package:book_app/features/book/domain/usecases/fetch_newest_book.dart';
import 'package:book_app/features/book/presentation/bloc/feature_books/feature_books_bloc.dart';
import 'package:book_app/features/book/presentation/bloc/feature_books/feature_books_event.dart';
import 'package:book_app/features/book/presentation/bloc/newest_books/newest_books_bloc.dart';
import 'package:book_app/features/book/presentation/bloc/newest_books/newest_books_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksBloc(getIt.get<FetchFeaturedBooks>())
                ..add(FetchFeaturedBooksEvent()),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksBloc(getIt.get<FetchNewestBooks>())
                ..add(FetchNewestBooksEvent(startIndex: 0)),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark(useMaterial3: true),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
