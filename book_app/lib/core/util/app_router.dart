import 'package:book_app/features/book/presentation/view/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

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
    ],
  );
}
