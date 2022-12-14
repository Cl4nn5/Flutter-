import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AppBar",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appBar'),
        centerTitle: true,
        elevation: 0,
        // leading: widget이나 icon등을 appBar의 왼쪽에 배치
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu button is clicked');
          },
        ),
        // actions: widget이나 icon등을 appBar의 오른쪽에 배치
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          ),
        ],
      ),
    );
  }
}
