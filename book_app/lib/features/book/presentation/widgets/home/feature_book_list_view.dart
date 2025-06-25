import 'package:book_app/core/util/app_router.dart';
import 'package:book_app/features/book/presentation/bloc/feature_books/feature_books_bloc.dart';
import 'package:book_app/features/book/presentation/bloc/feature_books/feature_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
    required this.isLargeScreen,
    required this.orientation,
  });
  final bool isLargeScreen;
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    final imageWidth = isLargeScreen ? 150.0 : 120.0;
    final imageHeight = isLargeScreen ? 250.0 : 200.0;

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
                  onTap: () => context.push(
                    AppRouter.kBookDetails,
                    extra: state.books.items![index],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child:
                        // Image.network(
                        //   state
                        //           .books
                        //           .items![index]
                        //           .volumeInfo
                        //           ?.imageLinks
                        //           ?.thumbnail ??
                        //       '',
                        //   height: imageHeight,
                        //   width: imageWidth,
                        //   fit: BoxFit.fill,
                        //   errorBuilder:
                        //       (context, error, stackTrace) => Icon(Icons.error),
                        // ),
                        CachedNetworkImage(
                          imageUrl:
                              state
                                  .books
                                  .items![index]
                                  .volumeInfo
                                  ?.imageLinks
                                  ?.thumbnail ??
                              '',
                          height: imageHeight,
                          width: imageWidth,
                          fit: BoxFit.fill,
                          placeholder: (context, url) => Container(
                            color: Colors.grey[200],
                            height: imageHeight,
                            width: imageWidth,
                          ),
                          errorWidget: (context, url, error) => Container(
                            color: Colors.grey[300],
                            height: imageHeight,
                            width: imageWidth,
                            child: Icon(Icons.broken_image, color: Colors.grey),
                          ),
                        ),
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
