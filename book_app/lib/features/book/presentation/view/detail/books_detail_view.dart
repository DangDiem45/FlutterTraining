import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/presentation/bloc/similar_books/similar_books_bloc.dart';
import 'package:book_app/features/book/presentation/bloc/similar_books/similar_books_event.dart';
import 'package:book_app/features/book/presentation/view/detail/books_detail_view_body.dart';
import 'package:book_app/features/book/presentation/widgets/detail/similar_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksDetailView extends StatefulWidget {
  const BooksDetailView({super.key, required this.bookItems});
  final BookItemsEntity bookItems;

  @override
  State<BooksDetailView> createState() => _BooksDetailViewState();
}

class _BooksDetailViewState extends State<BooksDetailView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksBloc>(context).add(
      FetchSimilarBooksEvent(
        categories:
            widget.bookItems.volumeInfo?.categories?.isNotEmpty ?? false
                ? widget.bookItems.volumeInfo!.categories!.first
                : 'computer',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF121212),
        foregroundColor: const Color(0xFFE0E0E0),
        title: Text(
          widget.bookItems.volumeInfo?.title ?? 'Unknown title',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xFFE0E0E0),
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            final isLargeScreen = constraints.maxWidth > 600;
            return SafeArea(
              child: OrientationBuilder(
                builder: (context, orientation) {
                  if (isLargeScreen) {
                    return Row(
                      children: [
                        Flexible(flex: 1, child: SimilarBooks()),
                        Flexible(
                          flex: 2,
                          child: BooksDetailViewBody(
                            bookItems: widget.bookItems,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return BooksDetailViewBody(bookItems: widget.bookItems);
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
