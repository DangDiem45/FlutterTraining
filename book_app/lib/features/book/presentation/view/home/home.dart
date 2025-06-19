import 'package:book_app/features/book/presentation/view/home/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return HomeViewBody(constraints: constraints);
          },
        ),
      ),
    );
  }
}
