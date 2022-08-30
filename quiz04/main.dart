import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("ListTile Widget"),
          leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/taylor.jpg",),
                radius: 40,
              ),
              Text(
                "Taylor Watson",
                textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.all(10)),
              ListTile(
                title: Text("Main Title",style: TextStyle(color: Colors.blueAccent),),
                subtitle: Text("This is My sub Title",style: TextStyle(color: Colors.blueAccent),),
                leading: Icon(Icons.phone,color: Colors.blueAccent,),
                trailing: Icon(Icons.shopping_cart,color: Colors.blueAccent,),
              ),
              ListTile(
                title: Text("Main Title",style: TextStyle(color: Colors.blueAccent),),
                subtitle: Text("This is My sub Title",style: TextStyle(color: Colors.blueAccent),),
                leading: Icon(Icons.school,color: Colors.blueAccent,),
                trailing: Icon(Icons.share,color: Colors.blueAccent,),
              ),
              Card(
                elevation: 8,
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://st.depositphotos.com/1003814/5052/i/450/depositphotos_50523105-stock-photo-pizza-with-tomatoes.jpg'),
                      radius: 40,
                    ),
                    Text(
                      "Vegetable Pizza",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
