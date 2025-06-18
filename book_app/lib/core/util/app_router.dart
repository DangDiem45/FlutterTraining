import 'package:book_app/core/util/service_locator.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/usecases/fetch_similar_book.dart';
import 'package:book_app/features/book/presentation/bloc/similar_books/similar_books_bloc.dart';
import 'package:book_app/features/book/presentation/view/detail/books_detail_view.dart';
import 'package:book_app/features/book/presentation/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/bookDetails';

  static final router = GoRouter(
    initialLocation: kHomeView,
    routes: [
      GoRoute(
        path: kHomeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(seconds: 1),
            child: const HomeView(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return SlideTransition(
                position: animation.drive(
                  Tween(
                    begin: const Offset(0, 1.5),
                    end: Offset.zero,
                  ).chain(CurveTween(curve: Curves.ease)),
                ),
                child: FadeTransition(
                  opacity: CurveTween(
                    curve: Curves.easeInOutCirc,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
          );
        },
      ),
      GoRoute(
        path: kBookDetails,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 450),
            child: BlocProvider(
              create:
                  (context) => SimilarBooksBloc(getIt.get<FetchSimilarBooks>()),
              child: BooksDetailView(bookItems: state.extra as BookItemsEntity),
            ),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return SlideTransition(
                position: animation.drive(
                  Tween(
                    begin: const Offset(1.5, 0),
                    end: Offset.zero,
                  ).chain(CurveTween(curve: Curves.ease)),
                ),
                child: child,
              );
            },
          );
        },
      ),
    ],
  );
}
