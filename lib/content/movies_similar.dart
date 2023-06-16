// ignore_for_file: no_logic_in_create_state, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../common/commoncard.dart';
import '../common/commontrending.dart';

Future<Trending> fetchMovies(movieId) async {
  final String? keyVar = DotEnv().env['MOVIE_KEY'];
  final response = await http.get("https://api.themoviedb.org/3/movie/$movieId/similar?api_key=$keyVar" as Uri);
  if (response.statusCode == 200) {
    return Trending.fromJson(json.decode(response.body));
  } else {
    throw Exception('not able to Fetch the Upcoming Movies');
  }
}

class SimilarMovies extends StatefulWidget {
  final int movieId;
  const SimilarMovies(this.movieId, {super.key});
  @override
  _SimilarMoviesState createState() => _SimilarMoviesState(movieId);
}

class _SimilarMoviesState extends State<SimilarMovies> {
  int movieId;
  _SimilarMoviesState(this.movieId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchMovies(movieId),
      builder: (context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: Image.asset('assets/images/loading.gif'),
          );
        } else {
          return HorizontalCards(snapshot.data.movies);
        }
      },
    );
  }
}