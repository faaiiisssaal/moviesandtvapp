// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../common/commoncard.dart';
import '../common/commontrending.dart';

Future<Trending> fetchMovies() async {
  final String? keyVar = DotEnv().env['MOVIE_KEY'];
  final response = await http.get("https://api.themoviedb.org/3/movie/upcoming?api_key=$keyVar" as Uri);
  if (response.statusCode == 200) {
    return Trending.fromJson(json.decode(response.body));
  } else {
    throw Exception('not able to Fetch the Upcoming Movies');
  }
}

class UpcomingMovies extends StatefulWidget {
  const UpcomingMovies({super.key});

  @override
  _UpcomingMoviesState createState() => _UpcomingMoviesState();
}

class _UpcomingMoviesState extends State<UpcomingMovies> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchMovies(),
      builder: (context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: Image.asset('asset/loading.gif'),
          );
        } else {
          return HorizontalCards(snapshot.data.movies);
        }
      },
    );
  }
}