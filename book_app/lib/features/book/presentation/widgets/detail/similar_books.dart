import 'package:book_app/features/book/presentation/bloc/similar_books/similar_books_bloc.dart';
import 'package:book_app/features/book/presentation/bloc/similar_books/similar_books_state.dart';
import 'package:book_app/features/book/presentation/widgets/home/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooks extends StatelessWidget {
  const SimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 600;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isLargeScreen ? 24 : 16),
      child: BlocBuilder<SimilarBooksBloc, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksLoading) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF7043)),
              ),
            );
          } else if (state is SimilarBooksSuccess) {
            if (state.books.items?.isEmpty ?? true) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book_outlined,
                      size: 64,
                      color: Color(0xFFFF7043),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No similar books found',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFF7043),
                      ), // Sáng hơn
                    ),
                  ],
                ),
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.only(bottom: 16),
              itemCount: state.books.items!.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E1E1E),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: BestSellerListViewItem(
                    bookItems: state.books.items![index],
                    isLargeScreen: isLargeScreen,
                  ),
                );
              },
            );
          } else if (state is SimilarBooksFailure) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Colors.red[300],
                  ), // Sáng hơn
                  const SizedBox(height: 16),
                  Text(
                    'Something went wrong',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFE0E0E0),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    state.errMessage,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF909090),
                    ), // Sáng hơn
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
