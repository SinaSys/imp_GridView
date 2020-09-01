import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App bar"),
        ),
        body: GridView.count(
          crossAxisSpacing: 25,
          mainAxisSpacing: 50,
          crossAxisCount: 3,
          children: List.generate(
            10,
            (index) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  height: 50,
                  width: 30,
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      '$index',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
