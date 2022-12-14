import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue, // 견본 색상
      // ),
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text('근무형태 계산기'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/imgs/img1.png'),
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[850],
              thickness: 0.5,
              // endIndent: 30,
            ),
            const Text(
              "Name",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Content",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Power Level",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "14",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10),
                Text(
                  "using lightsaber",
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                )
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10),
                Text(
                  "using lightsaber2",
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                )
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10),
                Text(
                  "using lightsaber3",
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                )
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/imgs/tr_img1.png'),
                radius: 40,
                backgroundColor: Colors.amber[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('근무형태 계산기'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Hello"),
            Text("Hello"),
            Text("Hello"),
          ],
        ),
      ),
    );
  }
}
