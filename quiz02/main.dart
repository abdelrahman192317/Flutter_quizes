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
          elevation: 0,
          backgroundColor: Colors.deepOrangeAccent,
          leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 10),
              color: Colors.deepOrangeAccent,
              child: Text("Account Setting",style: TextStyle(fontWeight: FontWeight.bold),),
              height: 70,width: double.infinity,
            ),

            Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/taylor.jpg",),
                  radius: 50,
                ),
                Text(
                  "Taylor Watson",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),

                Text(
                  "Edit Profile",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black38),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Phone Number",
                          style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                        ),
                        Text(
                          "01223456789",
                          style: TextStyle(fontWeight: FontWeight.w100,color: Colors.black54),
                        ),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black45,))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                        ),
                        Text(
                          "last@alb.com",
                          style: TextStyle(fontWeight: FontWeight.w200,color: Colors.black54),
                        ),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black45,))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                        ),
                        Text(
                          "************",
                          style: TextStyle(fontWeight: FontWeight.w100,color: Colors.black54),
                        ),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black45,))
                  ],
                ),
                FlatButton(onPressed: (){}, child: Text(
                  "Logout",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red),
                )),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
