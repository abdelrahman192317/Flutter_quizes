import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'items.dart';
import 'api_call.dart';

class Home extends StatefulWidget {
  static final String named = 'Home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Movie> list = [];

  @override
  void initState() {
    callAPI();
    super.initState();
  }

  callAPI() async{
    var api = APICalls();
    List<Movie> reList = await api.getPopularMovies();

    setState(() {
      list = reList;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: list.length == 0? Center(
        child: SpinKitDoubleBounce(
          color: Colors.lightBlue,
        ),
      ) :
      GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2/3
        ),
        itemBuilder: (ctx,index) => Items(movie: list[index]),
        itemCount: list.length,
        padding: EdgeInsets.all(10),
      )
    );
  }
}
