abstract class SimilarBooksEvent {}

class FetchSimilarBooksEvent extends SimilarBooksEvent {
  final String categories;

  FetchSimilarBooksEvent({required this.categories});
}
