import 'package:flutter/material.dart';

import '../content/movies_top_rated.dart';
import '../content/movies_upcoming.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              'Trending Movies',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 20,
            ),
            // TrendingMovies(),
            Text(
              'Top Rated Movies',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 20,
            ),
            TopRated(),
            Text(
              'Upcoming Movies',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 20,
            ),
            UpcomingMovies(),
          ],
        ),
      ),
    );
  }
}