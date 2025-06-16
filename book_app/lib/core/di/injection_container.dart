import 'package:book_app/features/book/data/data_source/remote/book_api_services.dart';
import 'package:book_app/features/book/data/repository/book_repository.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';
import 'package:book_app/features/book/domain/usecases/getbooks.dart';
import 'package:book_app/features/book/presentation/bloc/book_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => BookBloc(getBooks: sl()));

  sl.registerLazySingleton(() => GetBooks(sl()));

  sl.registerLazySingleton<BookRepository>(
    () => BookRepositoryImpl(remoteDataSource: sl()),
  );

  sl.registerLazySingleton<BookRemoteDataSource>(
    () => BookRemoteDataSourceImpl(client: sl()),
  );

  sl.registerLazySingleton(() => http.Client());
}
