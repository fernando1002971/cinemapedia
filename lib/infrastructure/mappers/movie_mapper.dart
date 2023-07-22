import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  //Mapper: leer diferentes modelos y crear una entidad
  //Crear una pelicula basado en algún objeto que vamos a recibir
//Tomar la implementación especifica de TheMovieDB y transformarla en la entidad correspondiente
  static Movie movieDBtoEntity(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath != "") ? 
      'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}' : 
      "https://ih1.redbubble.net/image.1893341687.8294/poster,504x498,f8f8f8-pad,600x600,f8f8f8.jpg",
      genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: (moviedb.posterPath !='') ?
      "https://image.tmdb.org/t/p/w500${moviedb.posterPath}" 
      :"https://ih1.redbubble.net/image.1893341687.8294/poster,504x498,f8f8f8-pad,600x600,f8f8f8.jpg",
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount);


}
