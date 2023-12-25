import 'package:cinemapedia/domain/entities/movie.dart';

abstract class LocalStorageDatasource {

//CUALQUIER DATASOURCE DEBE IMPLEMENTAR ESTOS MÉTODOS
//PARA SER CONSIDERADO UN DATASOURCE LOCAL

  Future<void> toggleFavorite(Movie movie);
  Future<bool> isMovieFavorite(int movieId);
  Future<List<Movie>> loadMovies({int limit = 10, offset = 0});
}
