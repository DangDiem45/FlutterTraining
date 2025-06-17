import 'package:book_app/features/book/presentation/bloc/newest_books/newest_books_state.dart';
import 'package:book_app/features/book/presentation/widgets/best_seller_list_view.dart';
import 'package:book_app/features/book/presentation/widgets/feature_book_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../bloc/newest_books/newest_books_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          const Text(
            'Featured Books',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          const SizedBox(height: 200, child: FeaturedBooksListView()),
          const SizedBox(height: 16),
          const Text(
            'Newest Books',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: BlocBuilder<NewestBooksBloc, NewestBooksState>(
              builder: (context, state) {
                if (state is NewestBooksLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is NewestBooksSuccess) {
                  return ListView.builder(
                    itemCount: state.books.items?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: BestSellerListViewItem(
                          bookItem: state.books.items![index],
                        ),
                      );
                    },
                  );
                } else if (state is NewestBooksFailure) {
                  return Text(
                    state.errMessage,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
