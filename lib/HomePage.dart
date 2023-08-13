import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'constrain.dart';

void main() {
  runApp(MyApp());
}

class Movie {
  final String title;
  final int year;
  final double rating;
  final String poster;

  Movie({
    required this.title,
    required this.year,
    required this.rating,
    required this.poster,
  });
}

class MyApp extends StatelessWidget {
  final List<Movie> favoriteMovies = [
    Movie(
      title: 'FAST X',
      year: 2023,
      rating: 9.1,
      poster: 'https://i.pinimg.com/564x/9c/59/20/9c5920d5720d7ba34ebf02096d6cc94e.jpg',
    ),
    Movie(
      title: 'TRANSFORMERS RISE OF THE BEAST',
      year: 2013,
      rating: 9.3,
      poster: 'https://i.pinimg.com/564x/f2/9e/81/f29e81c4527a8d05f00e6a2f13d2b510.jpg',
    ),
    Movie(
      title: 'Top Gun Maverick',
      year: 2021,
      rating: 9.0,
      poster: 'https://i.pinimg.com/564x/58/07/63/5807635ca265fc931a60f3843522ae55.jpg',
    ),
    Movie(
      title: 'Spiderman No Way Home',
      year: 2021,
      rating: 9.0,
      poster: 'https://i.pinimg.com/564x/47/c5/0e/47c50eb7c96e42d725f60c92caeab65d.jpg',
    ),
    Movie(
      title: 'Naruto',
      year: 2005,
      rating: 9.0,
      poster: 'https://i.pinimg.com/564x/3a/8c/63/3a8c63737ae2d94f9d4f09f477e3df34.jpg',
    ),
    Movie(
      title: 'AVENGER End Game',
      year: 2019,
      rating: 9.0,
      poster: 'https://i.pinimg.com/564x/95/26/68/9526684fe11e38cf6bb6fbd48e37de6a.jpg',
    ),
    Movie(
      title: 'The Greatesh Showman',
      year: 2017,
      rating: 9.0,
      poster: 'https://i.pinimg.com/564x/e7/8a/dd/e78add83879c892c3973f2e44dc0899a.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Favorite Movies'),
        ),
        body: ListView.builder(
          itemCount: favoriteMovies.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.grey[200], 
              elevation: 4, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), 
              ),
              margin: EdgeInsets.all(20), 
              child: ListTile(
                contentPadding: EdgeInsets.all(20), 
                leading: Image.network(
                  favoriteMovies[index].poster,
                  fit: BoxFit.cover,
                  width: 120, 
                ),
                title: Text(
                  favoriteMovies[index].title,
                  style: TextStyle(
                    fontSize: 22, 
                    fontWeight: FontWeight.bold,
                    color: kTextColor, 
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Year: ${favoriteMovies[index].year}',
                      style: TextStyle(
                        fontSize: 16, 
                        color: Colors.grey, 
                      ),
                    ),
                    Text(
                      'Rating: ${favoriteMovies[index].rating.toString()}',
                      style: TextStyle(
                        fontSize: 16, 
                        color: Colors.grey, 
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
