import 'package:book_app/core/util/app_router.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookItems});
  final BookItemsEntity bookItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2))],
      ),
      child: GestureDetector(
        onTap: () => context.push(AppRouter.kBookDetails, extra: bookItems),
        child: Row(
          children: [
            Image.network(
              bookItems.volumeInfo?.imageLinks?.thumbnail ?? '',
              height: 80,
              width: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookItems.volumeInfo?.title ?? '',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GT-Sectra-Fine-Regular',
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5),
                  Text(
                    bookItems.volumeInfo?.authors?.join(', ') ??
                        'Unknown Author',
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookItems.saleInfo!.listPrice?.amount != null
                            ? '${bookItems.saleInfo!.listPrice?.amount} ${bookItems.saleInfo!.listPrice?.currencyCode}'
                            : 'Free',
                        style: TextStyle(fontSize: 12, color: Colors.green),
                      ),
                      SizedBox(width: 35),
                      Icon(
                        FontAwesomeIcons.star,
                        size: 12,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 4),
                      Text(
                        bookItems.volumeInfo?.averageRating?.toString() ??
                            '0.0',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(width: 1),
                      Text(
                        bookItems.volumeInfo?.ratingsCount != null
                            ? '(${bookItems.volumeInfo?.ratingsCount})'
                            : '(0)',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
