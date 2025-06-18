import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/presentation/widgets/detail/books_detail_header_view.dart';
import 'package:book_app/features/book/presentation/widgets/detail/books_detail_info_view.dart';
import 'package:book_app/features/book/presentation/widgets/detail/section_title.dart';
import 'package:book_app/features/book/presentation/widgets/detail/similar_books.dart';
import 'package:flutter/material.dart';

class BooksDetailViewBody extends StatelessWidget {
  const BooksDetailViewBody({super.key, required this.bookItems});
  final BookItemsEntity bookItems;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: BooksDetailHeaderView(bookItems: bookItems)),
        SliverToBoxAdapter(child: BooksDetailInfoView(bookItems: bookItems)),
        SliverToBoxAdapter(child: SectionTitle(title: 'Similar Books')),
        SliverFillRemaining(child: SimilarBooks()),
      ],
    );
  }
}
