import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

class MoviesNowPlaying extends StatefulWidget {
  const MoviesNowPlaying({Key? key}) : super(key: key);

  @override
  State<MoviesNowPlaying> createState() => _MoviesNowPlayingState();
}

class _MoviesNowPlayingState extends State<MoviesNowPlaying> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
