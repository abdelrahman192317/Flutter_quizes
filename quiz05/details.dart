import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'rooms.dart';

class Details extends StatefulWidget {

  static final String named = 'details';
  final Room room;
  const Details({
    Key? key,
    required this.room
  }) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState(room: room);
}

class _DetailsState extends State<Details> {

  final Room room;
  _DetailsState({required this.room});

  bool p=false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.room.desc),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(room.imageUrl,height: 200,width: double.infinity,fit: BoxFit.fill,),
            Padding(padding: EdgeInsets.all(10)),
            Text(room.desc,style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            p=!p;
          });
        },
        child: Icon(p?Icons.favorite :Icons.favorite_border),
      ),
    );
  }
}
