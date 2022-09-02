import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'api_call.dart';

class Details extends StatefulWidget {

  static final String named = 'details';
  final int id;

  const Details({
    Key? key,
    required this.id
  }) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState(id: id);
}

class _DetailsState extends State<Details> {

  MovieDetails movie = MovieDetails(
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

  final int id;

  _DetailsState({required this.id});

  bool p=false;

  @override
  void initState() {
    callAPI();
    super.initState();
  }

  callAPI() async{
    var api = APICalls();
    MovieDetails reList = await api.getMovie(id);

    setState(() {
      movie = reList;
    });
  }

  @override
  Widget build(BuildContext context) {

    TextStyle a = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.amber,
    );
    TextStyle b = TextStyle(fontWeight: FontWeight.w500,color: Colors.white);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(movie.title),
              background: Image.network(movie.posterPath,fit: BoxFit.cover,),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Text("Title:", style: a,textAlign: TextAlign.center,),
            Text(movie.title, style: b),
            Text("Popularity:", style: a,textAlign: TextAlign.center,),
            Text('${movie.popularity}', style: b),
            Text("Rate:", style: a,textAlign: TextAlign.center,),
            Text('${movie.rate}', style: b),
            Text("Vote Count:", style: a,textAlign: TextAlign.center,),
            Text('${movie.voteCount}', style: b),
            Text("Original Language:", style: a,textAlign: TextAlign.center,),
            Text(movie.originalLanguage, style: b),
            Text("Release Date:", style: a,textAlign: TextAlign.center,),
            Text(movie.releaseDate, style: b),
            SizedBox(height: 100,)
          ]),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            p=!p;
          });
        },
        child: Icon(
          p?Icons.favorite :Icons.favorite_border,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}