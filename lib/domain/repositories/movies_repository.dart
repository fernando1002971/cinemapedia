import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieRepository {
  //Peliculas en cartelera
  Future<List<Movie>> getNowPlaying({int page = 1});

  //Peliculas populares
  Future<List<Movie>> getPopular({int page = 1});

  //con mas valoraciones
  Future<List<Movie>> getTopRated({int page = 1});

  //Proximamente
  Future<List<Movie>> getUpcoming({int page = 1});

}
