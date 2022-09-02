import 'package:flutter/material.dart';
import 'api_call.dart';
import 'items.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  String s = "";

  List<Movie> list = [];

  callAPI() async{
    var api = APICalls();
    List<Movie> reList = await api.searchForMovies(s);

    setState(() {
      list = reList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search,color: Colors.blue,),
                hintText: 'Search',
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
              onChanged: (val) {
                setState(() {
                  s=val;
                });
                callAPI();
              },
            ),
            Expanded(
              child: list.length == 0? Center(
                child: Text("NO Thing!")
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
            )
          ],
        ),
      ),
    );
  }
}
