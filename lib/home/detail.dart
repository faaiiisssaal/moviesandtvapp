import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

import '../content/actor.dart';
import '../content/movies_similar.dart';

class Detail extends StatelessWidget {
  final Map movieData;
  const Detail(this.movieData, {super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final String titlePath = movieData['backdrop_path'];
    final String movieName = movieData['title'];
    final String movieOverview = movieData['overview'];
    final int movieId = movieData['id'];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height / 3),
        child: SafeArea(
          child: AppBar(
            flexibleSpace: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: "http://image.tmdb.org/t/p/w780/$titlePath",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10.0),
            Text(
              movieName,
              style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              movieOverview,
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.check,
                  size: 25.0,
                ),
                Icon(
                  FontAwesomeIcons.shareAlt,
                  size: 25.0,
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('My List'),
                Text('Share'),
              ],
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Cast',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Actors(movieId),
            const SizedBox(height: 10.0),
            const Text(
              'Similar movies',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SimilarMovies(movieId),
          ],
        ),
      ),
    );
  }
}