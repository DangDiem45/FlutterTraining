abstract class NewestBooksEvent {}

class FetchNewestBooksEvent extends NewestBooksEvent {
  final int startIndex;
  final bool isNewFetch;

  FetchNewestBooksEvent({required this.startIndex, this.isNewFetch = false});
}
