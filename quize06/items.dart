import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details.dart';
import 'api_call.dart';

class Items extends StatelessWidget {
  final Movie movie;

  const Items({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Details(id: movie.id)));
        },
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 8,
            child: Stack(
              children: [
                ClipRRect(
                  child: Image.network(
                    movie.posterPath,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                      height: 30,
                      width: 160,
                      color: Colors.black45,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.white60,
                            ),
                            Expanded(child: Text(movie.title)),
                            //Expanded(child: Text('${movie.rate}')),
                            Icon(
                              Icons.star_rate,
                              color: Colors.yellow,
                            )
                          ])),
                ),
              ],
            )));
  }
}
