import 'package:flutter/material.dart';

import '../content/movielistscreen.dart';
import '../content/movies_upcoming.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text(
              'Trending Movies',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 20,
            ),
            // TrendingMovies(),
            const Text(
              'Top Rated Movies',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 20,
            ),
            MovieListScreen(),
            const Text(
              'Upcoming Movies',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 20,
            ),
            const UpcomingMovies(),
          ],
        ),
      ),
    );
  }
}