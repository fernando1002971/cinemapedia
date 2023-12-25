import 'package:cinemapedia/infrastructure/datasources/isar_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/local_storage_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localStorageRespositoryProvider = Provider((ref) {
  return LocalStoregeRepositoryImpl(IsarDatasource());
});


