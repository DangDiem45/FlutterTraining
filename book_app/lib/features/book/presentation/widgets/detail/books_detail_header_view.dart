import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BooksDetailHeaderView extends StatelessWidget {
  const BooksDetailHeaderView({super.key, required this.bookItems});
  final BookItemsEntity bookItems;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageHeight = screenWidth > 600 ? 300.0 : 250.0;
    final imageWidth = screenWidth > 600 ? 200.0 : 170.0;

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xFF1E1E1E), const Color(0xFF121212)],
        ),
      ),
      child: Column(
        children: [
          Hero(
            tag: 'book_image_${bookItems.id}',
            child: Container(
              height: imageHeight,
              width: imageWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child:
                    // Image.network(
                    //   bookItems.volumeInfo?.imageLinks?.thumbnail ?? '',
                    //   fit: BoxFit.cover,
                    //   errorBuilder:
                    //       (context, error, stackTrace) => Container(
                    //         color: Colors.grey[200],
                    //         child: const Icon(
                    //           Icons.book,
                    //           size: 50,
                    //           color: Colors.grey,
                    //         ),
                    //       ),
                    // ),
                    CachedNetworkImage(
                      imageUrl:
                          bookItems.volumeInfo?.imageLinks?.thumbnail ?? '',
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => Container(
                        color: Colors.grey[300],
                        child: Icon(Icons.book, size: 50, color: Colors.grey),
                      ),
                    ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            bookItems.volumeInfo?.title ?? 'No Title',
            style: TextStyle(
              fontSize: screenWidth > 600 ? 28 : 24,
              fontWeight: FontWeight.bold,
              color: const Color(0xFFE0E0E0),
            ),
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Text(
            bookItems.volumeInfo?.authors?.join(', ') ?? 'Unknown Author',
            style: TextStyle(
              fontSize: screenWidth > 600 ? 18 : 16,
              color: const Color(0xFFB0B0B0),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
