# Book App 📚

A Flutter application that fetches and displays book information from the Google Books API.

## Features

- Display a list of newest programming books.
- Showcase featured books in computer science.
- View details of individual books.
- Explore similar books based on selected titles.
- Clean Architecture and BLoC state management.

## Installation

1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   cd google-books-app
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Configure API Key:
   ```bash
   Open core/constant/constants.dart.
   Replace YOUR_API_KEY with your Google Books API key
   ```
4. Run the app:

- For Android/iOS emulator:
  ```bash
  flutter run -d <device_id>
  ```
- For Web:
  ```bash
  flutter run -d chrome
  ```

## Project Structure

        book/
        ├── core/
        │ ├── constant/
        │ │ └── constants.dart
        │ ├── error/
        │ │ └── failures.dart
        │ └── util/
        │ ├── api_service.dart
        │ ├── api_router.dart
        │ └── service_locator.dart
        ├── features_book/
        │ ├── data/
        │ │ ├── models/
        │ │ │ └── books.dart
        │ │ └── repository/
        │ │ └── book_repository_impl.dart
        │ ├── domain/
        │ │ ├── entities/
        │ │ │ └── books.dart
        │ │ └── repository/
        │ │ └── book_repository.dart
        │ └── usecases/
        │ ├── fetch_feature_book.dart
        │ ├── fetch_newest_book.dart
        │ └── fetch_similar_book.dart
        ├── presentation/
        │ ├── bloc/
        │ │ ├── feature_books/
        │ │ │ ├── newest_books_bloc.dart
        │ │ │ ├── newest_books_event.dart
        │ │ │ └── newest_books_state.dart
        │ │ └── similar_books/
        │ │ ├── similar_books_bloc.dart
        │ │ ├── similar_books_event.dart
        │ │ └── similar_books_state.dart
        │ ├── view/
        │ │ ├── detail/
        │ │ │ ├── books_detail_view_body.dart
        │ │ │ └── books_detail_view.dart
        │ │ ├── home/
        │ │ │ ├── home_view_body.dart
        │ │ │ └── home.dart
        │ │ └── widgets/
        │ │ ├── detail/
        │ │ │ ├── books_detail_header_view.dart
        │ │ │ └── books_detail_info_view.dart
        │ │ ├── section_title.dart
        │ │ └── similar_books.dart
        └── main.dart
