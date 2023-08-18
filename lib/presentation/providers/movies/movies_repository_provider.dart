import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Este Repositorio es inmutable, su objetivo es proporcionar a todos los demás provider 
//La información necesaria para que pueden consultar la información de este repositorio

//Puente para interactura con el datasource


final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
