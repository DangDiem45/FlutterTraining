import 'package:book_app/features/book/presentation/bloc/feature_books.dart/feature_books_bloc.dart';
import 'package:book_app/features/book/presentation/bloc/feature_books.dart/feature_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksBloc, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FeaturedBooksSuccess) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.items?.length ?? 0,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.network(
                    (state
                                .books
                                .items![index]
                                .volumeInfo
                                ?.imageLinks
                                ?.thumbnail ??
                            '')
                        .replaceFirst('http://', 'https://'),
                    height: 200,
                    width: 120,
                    fit: BoxFit.cover,
                    errorBuilder:
                        (context, error, stackTrace) => const Icon(Icons.error),
                  ),
                ),
              );
            },
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errMessage);
        }
        return const SizedBox.shrink();
      },
    );
  }
}
