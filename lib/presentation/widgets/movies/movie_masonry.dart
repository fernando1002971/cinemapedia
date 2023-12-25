import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MovieMasonry extends StatefulWidget {
  final List<Movie> movies;
  final VoidCallback? loadNextPage;
  const MovieMasonry({super.key, required this.movies, this.loadNextPage});

  @override
  State<MovieMasonry> createState() => _MovieMasonryState();
}

class _MovieMasonryState extends State<MovieMasonry> {
  
//Controller
  final nextPageController = ScrollController();

//Inicializar el scrollcontroller
  @override
  void initState() {
    super.initState();
    nextPageController.addListener(()  {
      if (widget.loadNextPage == null) return;
      if ((nextPageController.position.pixels +100) >=  nextPageController.position.maxScrollExtent ) {
        widget.loadNextPage!();
      }
    });
  }

//Destruirlo cuando ya no lo usemos
  @override
  void dispose() {
    nextPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: MasonryGridView.count(
          controller: nextPageController,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          itemCount: widget.movies.length,
          itemBuilder: (context, index) {
            if (index == 1) {
              return Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  MoviePosterLink(movie: widget.movies[index]),
                ],
              );
            }
            return MoviePosterLink(movie: widget.movies[index]);
          }),
    );
  }
}
