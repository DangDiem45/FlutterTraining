import 'package:dio/dio.dart';
import 'package:final_project/core/network/dio_client.dart';
import 'package:final_project/features/ecommerce/data/datasources/products/product_api_service.dart';
import 'package:final_project/features/ecommerce/data/repository/products/product_repository_impl.dart';
import 'package:final_project/features/ecommerce/domain/repository/products/product_repository.dart';
import 'package:final_project/features/ecommerce/domain/usecase/products/get_product.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerLazySingleton<Dio>(() => DioClient.createDio());
  sl.registerLazySingleton<ProductApiService>(() => ProductApiService(sl()));
  sl.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(apiService: sl()),
  );
  sl.registerLazySingleton(() => GetProduct(sl()));
}
