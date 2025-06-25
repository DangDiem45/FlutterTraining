import 'package:book_app/core/util/app_router.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.bookItems,
    required this.isLargeScreen,
  });
  final BookItemsEntity bookItems;
  final bool isLargeScreen;

  @override
  Widget build(BuildContext context) {
    final imageHeight = isLargeScreen ? 150.0 : 100.0;
    final imageWidth = isLargeScreen ? 100.0 : 80.0;
    final fontSize = isLargeScreen ? 16.0 : 14.0;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2))],
      ),
      child: GestureDetector(
        onTap: () => context.push(AppRouter.kBookDetails, extra: bookItems),
        child: Row(
          children: [
            // Image.network(
            //   bookItems.volumeInfo?.imageLinks?.thumbnail ?? '',
            //   height: imageHeight,
            //   width: imageWidth,
            //   fit: BoxFit.cover,
            // ),
            CachedNetworkImage(
              imageUrl: bookItems.volumeInfo?.imageLinks?.thumbnail ?? '',
              height: imageHeight,
              width: imageWidth,
              fit: BoxFit.cover,
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
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookItems.volumeInfo?.title ?? '',
                    style: TextStyle(
                      fontSize: fontSize,
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
                    style: TextStyle(
                      fontSize: fontSize - 4,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookItems.saleInfo!.listPrice?.amount != null
                            ? '${bookItems.saleInfo!.listPrice?.amount} ${bookItems.saleInfo!.listPrice?.currencyCode}'
                            : 'Free',
                        style: TextStyle(
                          fontSize: fontSize - 2,
                          color: Colors.green,
                        ),
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
                        style: TextStyle(
                          fontSize: fontSize - 2,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 1),
                      Text(
                        bookItems.volumeInfo?.ratingsCount != null
                            ? '(${bookItems.volumeInfo?.ratingsCount})'
                            : '(0)',
                        style: TextStyle(
                          fontSize: fontSize - 2,
                          color: Colors.grey,
                        ),
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
