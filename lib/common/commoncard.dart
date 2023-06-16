import 'package:flutter/material.dart';

import '../home/detail.dart';

class HorizontalCards extends StatelessWidget {
  final List movieData;
  const HorizontalCards(this.movieData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movieData.length,
        itemBuilder: (context, index) {
          final String posterPath = movieData[index]['poster_path'];
          return Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return Detail(movieData[index]);
                    },
                  ),
                );
              },
              child: FadeInImage.assetNetwork(
                  placeholder: 'asset/loading.gif',
                  image: 'http://image.tmdb.org/t/p/w780/$posterPath'),
            ),
          );
        },
      ),
    );
  }
}