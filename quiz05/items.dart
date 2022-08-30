import 'package:flutter/material.dart';
import 'rooms.dart';
import 'details.dart';

class Items extends StatelessWidget {

  final Room room;

  const Items({
    Key? key,
    required this.room
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 8,
      child: InkWell(
        onTap: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => Details(room: room))
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(room.imageUrl,height: 100,width: 200,fit: BoxFit.fill,),
              Text(room.desc,style: TextStyle(color: Colors.amberAccent),),
              Icon(Icons.arrow_forward_ios,color: Colors.black54,)
            ],
          ),
        ),
      ),
    );
  }
}
