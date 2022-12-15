import 'package:flutter/material.dart';
import 'function/work_type.dart';

TextStyle timerTextStyle = TextStyle(
  color: Colors.blueGrey,
  fontSize: 20,
);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AppBar",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final WorkType workType = WorkType(nowDate: DateTime.now());

  TextStyle headerTextStyle = TextStyle(
    color: Colors.blue,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('appBar'),
          centerTitle: true,
          elevation: 0,
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/imgs/tr_img1.png'),
                  backgroundColor: Colors.blue,
                ),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/imgs/img1.png'),
                    backgroundColor: Colors.blue,
                  ),
                ],
                accountName: Text('Clann#3965'),
                accountEmail: Text('clann5@naver.com'),
                onDetailsPressed: () => print('arrow is clicked'),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.grey[850]),
                title: Text('Home'),
                onTap: () {
                  print('Home is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.grey[850]),
                title: Text('Settings'),
                onTap: () {
                  print('Settings is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.question_answer, color: Colors.grey[850]),
                title: Text('Q&A'),
                onTap: () {
                  print('Q&A is clicked');
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return ListView(
              children: [
                // notice
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "추가할 기능 있으면",
                        style: headerTextStyle,
                      ),
                      Text(
                        " 디스코드",
                        style: headerTextStyle.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "로 연락해주세요",
                        style: headerTextStyle,
                      ),
                    ],
                  ),
                ),
                // timer
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "현재 시간: ",
                      style: timerTextStyle,
                    ),
                    Text(
                      workType.nowDate.toString().substring(0, 16),
                      style: timerTextStyle,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // red Button
                Center(
                  child: TextButton(
                    child: Text(
                      "오늘의 근무 확인",
                      style: TextStyle(color: Colors.white),
                    ),
                    //onPressed: () => print(workType.resultString())),
                    onPressed: () {
                      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                          content: Text(workType.resultString()),
                          action: SnackBarAction(
                            label: 'OK',
                            onPressed: () {
                              print("SnackBar's OK button is clicked");
                            },
                          )));
                    },
                    style: ButtonStyle(
                      // 패딩 오른쪽 끝으로
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                      ),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[700]),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // result init Text
                Center(
                  child: Text(
                    workType.resultString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}


/* 
Center(
              child: TextButton(
                child: Text(
                  "오늘의 근무 확인",
                  style: TextStyle(color: Colors.white),
                ),
                //onPressed: () => print(workType.resultString())),
                onPressed: () {
                  ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                      content: Text(workType.resultString()),
                      action: SnackBarAction(
                        label: 'OK',
                        onPressed: () {
                          print("SnackBar's OK button is clicked");
                        },
                      )));
                },
                style: ButtonStyle(
                  // 패딩 오른쪽 끝으로
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  ),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.red[700]),
                ),
              ),
            );
 */