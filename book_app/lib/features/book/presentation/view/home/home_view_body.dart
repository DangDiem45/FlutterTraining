import 'package:book_app/features/book/presentation/bloc/newest_books/newest_books_state.dart';
import 'package:book_app/features/book/presentation/widgets/home/best_seller_list_view.dart';
import 'package:book_app/features/book/presentation/widgets/home/feature_book_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/newest_books/newest_books_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = constraints.maxWidth > 600;
    final padding = isLargeScreen ? 24.0 : 12.0;
    final imageHeight = isLargeScreen ? 250.0 : 200.0;

    return OrientationBuilder(
      builder: (context, orientation) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                const Text(
                  'Featured Books',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: imageHeight,
                  child: FeaturedBooksListView(
                    isLargeScreen: isLargeScreen,
                    orientation: orientation,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Newest Books',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                Column(
                  children: [
                    BlocBuilder<NewestBooksBloc, NewestBooksState>(
                      builder: (context, state) {
                        if (state is NewestBooksLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is NewestBooksSuccess) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: state.books.items?.length ?? 0,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom: screenWidth * 0.02,
                                ),
                                child: BestSellerListViewItem(
                                  bookItems: state.books.items![index],
                                  isLargeScreen: isLargeScreen,
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
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
