// ignore_for_file: library_private_types_in_public_api

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'movielishdetailscreen.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  List<dynamic> movies = [];
  List<dynamic> filteredMovies = [];
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchMovieData();
  }

  Future<void> fetchMovieData() async {
    const String apiUrl =
        'https://api.themoviedb.org/3/movie/top_rated?api_key=d4e889210ceeda55b55b9176b7928755';
    final Uri uri = Uri.parse(apiUrl);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        movies = data['results'];
        filteredMovies = List.from(movies);
      });
    } else {
      if (kDebugMode) {
        print('API request failed with status code: ${response.statusCode}');
      }
    }
  }

  void searchMovies(String searchText) {
    setState(() {
      filteredMovies = movies.where((movie) {
        final title = movie['title'].toString().toLowerCase();
        return title.contains(searchText.toLowerCase());
      }).toList();
    });
  }

  // void searchMovies(String searchText) {
  //   setState(() {
  //     filteredMovies = movies.where((movie) {
  //       final title = movie['title'].toString().toLowerCase();
  //       final description = movie['overview'].toString().toLowerCase();
  //       return title.contains(searchText.toLowerCase()) ||
  //           description.contains(searchText.toLowerCase());
  //     }).toList();
  //   });
  // }

  void startSearch() {
    setState(() {
      isSearching = true;
    });
  }

  void cancelSearch() {
    setState(() {
      isSearching = false;
      filteredMovies = List.from(movies);
      searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: filteredMovies.isEmpty
          ? const Center(
              child: Text('No movies found.'),
            )
          : CarouselSlider.builder(
              itemCount: filteredMovies.length,
              itemBuilder: (context, index, realIndex) {
                final movie = filteredMovies[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieDetailsScreen(
                          movie: movie,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500${movie['poster_path']}',
                        fit: BoxFit.cover,
                        width: 1000,
                        height: 300,
                      ),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: 350,
                viewportFraction: 0.7,
                enlargeCenterPage: false,
                autoPlay: true,
                aspectRatio: 1.0,
              ),
            ),
    );
  }
}
