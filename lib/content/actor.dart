// ignore_for_file: library_private_types_in_public_api, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../common/commoncast.dart';

Future<Cast> fetchCasts(movieId) async {
  final String? keyVar = DotEnv().env['MOVIE_KEY'];
  final response = await http.get("https://api.themoviedb.org/3/movie/$movieId/casts?api_key=$keyVar" as Uri);
  if (response.statusCode == 200) {
    return Cast.fromJson(json.decode(response.body));
  } else {
    throw Exception('not able to Fetch the trening Movies');
  }
}

class Actors extends StatefulWidget {
  final int movieId;
  const Actors(this.movieId, {super.key});
  @override
  _ActorsState createState() => _ActorsState(movieId);
}

class _ActorsState extends State<Actors> {
  int movieId;
  _ActorsState(this.movieId);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchCasts(movieId),
      builder: (context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: Image.asset('assets/images/loading.gif'),
          );
        } else {
          final List castData = snapshot.data.cast;
          castData.removeWhere((item) => item['profile_path'] == null);
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: castData.length,
              itemBuilder: (context, index) {
                final String actorImage = castData[index]['profile_path'];
                final String actorName = castData[index]['name'];
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Card(
                    elevation: 5.0,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: FadeInImage.assetNetwork(
                              placeholder: 'assets/images/loading.gif',
                              image:
                              'http://image.tmdb.org/t/p/w780/$actorImage'),
                        ),
                        Text(
                          actorName,
                          style: const TextStyle(
                              fontSize: 11.0, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}