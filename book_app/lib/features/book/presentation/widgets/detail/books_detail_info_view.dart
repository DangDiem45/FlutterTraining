import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:flutter/material.dart';

class BooksDetailInfoView extends StatelessWidget {
  const BooksDetailInfoView({super.key, required this.bookItems});
  final BookItemsEntity bookItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildInfoRow(
            'Publisher',
            bookItems.volumeInfo?.publisher ?? 'Unknown',
            Icons.business,
          ),
          const SizedBox(height: 12),
          buildInfoRow(
            'Published',
            bookItems.volumeInfo?.publishedDate ?? 'Unknown',
            Icons.calendar_today,
          ),
          const SizedBox(height: 12),
          buildInfoRow(
            'Pages',
            '${bookItems.volumeInfo?.pageCount ?? 'Unknown'}',
            Icons.menu_book,
          ),
          const SizedBox(height: 16),
          const Text(
            'Description',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE0E0E0),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            bookItems.volumeInfo?.description ?? 'No description available.',
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFFB0B0B0),
              height: 1.5,
            ),
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget buildInfoRow(String label, String value, IconData icon) {
    return Row(
      children: [
        Icon(icon, size: 20, color: const Color(0xFFFF7043)),
        const SizedBox(width: 12),
        Text(
          '$label: ',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFFE0E0E0),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontSize: 14, color: Color(0xFFB0B0B0)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
