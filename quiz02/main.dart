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
          backgroundColor: Colors.blueGrey,
          leading: Icon(Icons.arrow_back),
          actions: [
            Icon(Icons.add),
            Icon(Icons.menu),
          ],
        ),
        body: Container(
          color: Colors.blueGrey,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset("images/taylor.jpg",height: 100,width: 100,),
              ),
              Text(
                "Taylor Watson",
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              Text(
                "SOFTWARE DEVELOPER",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                "Create great Project",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                "@TwWorks",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("images/twitter.png",height: 50,width: 50,),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("images/meduium.png",height: 50,width: 50,),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset("images/linkedin.png",height: 50,width: 50,),
                  ),
                ],
              ),
              RaisedButton(
                color: Colors.blue,
                onPressed: (){},
                child: Text(
                  "Hire Me",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      FloatingActionButton(onPressed: (){},
                        child: Image.asset("images/dribble.png",),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        "1.3K",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FloatingActionButton(onPressed: (){},
                        child: Image.asset("images/behance.png",),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        "1.3K",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
