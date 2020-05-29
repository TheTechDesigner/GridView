import 'package:flutter/material.dart';
import 'package:gridview/images.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF832685),
        primaryColorLight: Color(0xFFC81379),
        accentColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Gridview (Scroll)';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(50, (index) {
            return Container(
              margin: EdgeInsets.all(5.0),
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage(captainAmerica),
                      height: 118.0,
                      width: 120.0,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "$index",
                      style: TextStyle(fontSize: 26.0),
                    )
                  ],
                ),
              ),
            );
          })),
    );
  }
}
