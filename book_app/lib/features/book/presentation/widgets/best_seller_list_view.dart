import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookItem});
  final BookItemsEntity bookItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Image.network(
            bookItem.volumeInfo?.imageLinks?.thumbnail ?? '',
            height: 80,
            width: 60,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Text(
                  bookItem.volumeInfo?.title ?? '',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  bookItem.volumeInfo?.authors?.join(', ') ?? 'Unknown Author',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
