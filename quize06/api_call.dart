import 'package:http/http.dart';
import 'dart:convert';

class Movie {
  int id;
  String title;
  double? rate;
  String posterPath = "https://image.tmdb.org/t/p/w500/";
  Movie({
        required this.id,
        required this.title,
        //required this.rate,
        required String path
      }) {
    this.posterPath = "${this.posterPath}$path";
  }
}

class MovieDetails {
  final int id;
  final String title;
  final double? rate;
  String posterPath = "https://image.tmdb.org/t/p/w500/";
  final String originalLanguage;
  final String overview;
  final double popularity;
  final String releaseDate;
  final int voteCount;
  MovieDetails({
    required this.id,
    required this.title,
    required this.rate,
    required String path,
    required this.originalLanguage,
    required this.overview,
    required this.popularity,
    required this.releaseDate,
    required this.voteCount
  }) {
    this.posterPath = "${this.posterPath}$path";
  }
}

class APICalls {

  Future<MovieDetails> getMovie(int id) async {
    MovieDetails list = MovieDetails(
      id: 0,
      title: "",
      rate: 0,
      path: "",
      originalLanguage: '',
      overview: '',
      popularity: 0,
      releaseDate: '',
      voteCount: 0,
    );
    try {
      //https://api.themoviedb.org/3/movie/550?api_key=eb03df251074313f6e24c705f23a1cdc
      Uri path = Uri.https("api.themoviedb.org", "3/movie/${id}",
          {"api_key": "eb03df251074313f6e24c705f23a1cdc"});
      Response response = await get(path);
      print(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        list = MovieDetails(
          id: data['id'],
          title: data['title'],
          rate: data['vote_average'],
          path: data['poster_path'],
          originalLanguage: data['original_language'],
          overview: data['overview'],
          popularity: data['popularity'],
          releaseDate: data['release_date'],
          voteCount: data['vote_count'],
        );
      } else print("Error");
    } catch (ex) {
      print(ex.toString());
    }
    return list;
  }

  Future<List<Movie>> getPopularMovies() async {
    //eb03df251074313f6e24c705f23a1cdc
    //https://api.themoviedb.org/3/movie/popular?api_key=<<api_key>>&language=en-US&page=1
    List<Movie> retutnedList = [];
    Uri url = Uri.https("api.themoviedb.org", "/3/movie/popular", {
      "api_key": "eb03df251074313f6e24c705f23a1cdc",
    });
    Response data = await get(url);
    if (data.statusCode == 200) {
      var converted = jsonDecode(data.body);
      var temp = converted["results"] as List;
      retutnedList = temp.map((elem) => Movie(
          id: elem['id'],
          title: elem['title'],
          //rate: elem['vote_average'],
          path: elem['poster_path']
      )).toList();
    } else print("Error");
    return retutnedList;
  }

  Future<List<Movie>> searchForMovies(String value) async {
    //https://api.themoviedb.org/3/search/movie?api_key={api_key}&query={MovieName}
    List<Movie> retutnedList = [];
    Uri url = Uri.https("api.themoviedb.org", "/3/search/movie",
        {"api_key": "eb03df251074313f6e24c705f23a1cdc", "query": value});
    Response data = await get(url);
    if (data.statusCode == 200) {
      var converted = jsonDecode(data.body);
      var temp = converted["results"] as List;
      retutnedList = temp.map((elem) => Movie(
          id: elem['id'],
          title: elem['title'],
          //rate: elem['vote_average'],
          path: elem['poster_path']
      )).toList();
    } else print("Error");
    return retutnedList;
  }
}