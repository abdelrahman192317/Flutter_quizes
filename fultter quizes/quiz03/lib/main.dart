import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var counter = 0;
  List <String> list = [
    'https://q-xx.bstatic.com/xdata/images/hotel/840x460/208086215.jpg?k=af5b31fd51781a293cb97b7bbb56f38e27f114f0d5ece2eca4424ea41b33da5d&o=',
    'King',
    'this good for you',
    'https://cf.bstatic.com/xdata/images/hotel/max1024x768/243099672.jpg?k=64d63bd48b0e0ec8a93d0a1ca002d1613d0c4777b636ea1120094e91407f0066&o=&hp=1',
    'Double',
    'good for you poth',
    'https://images.unsplash.com/photo-1540518614846-7eded433c457?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVkcm9vbXxlbnwwfHwwfHw%3D&w=1000&q=80',
    'Family',
    'good for your family',
    'https://s7d2.scene7.com/is/image/ritzcarlton/pnrqz-king-50661983?\$XlargeViewport100pct\$',
    'Single',
    'it\'s the best for you',
    'https://images.unsplash.com/photo-1616594039964-ae9021a400a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJlZHJvb218ZW58MHx8MHx8&w=1000&q=80',
    'Avatar',
    'not for Avatar but for you',
    'https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'poss',
    'your are not only the poss here',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: Icon(Icons.arrow_back),
          title: Text("Rooms List"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            //rossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 8,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(child: Image.network(list[counter]),height: 100,width: 100,),
                          Text("${list[counter+1]} Room"),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    Text(
                      list[counter+2],
                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              Card(
                elevation: 8,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(child: Image.network(list[counter+3]),height: 100,width: 100,),
                          Text("${list[counter+4]} Room"),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    Text(
                      list[counter+5],
                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              Card(
                elevation: 8,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(child: Image.network(list[counter+6]),height: 100,width: 100,),
                          Text("${list[counter+7]} Room"),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    Text(
                      list[counter+8],
                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){setState(() {
            if(counter < 9)counter+=9;
            else counter=0;
          });},
          child: Text('Next'),
        ),
      ),
    );
  }
}
