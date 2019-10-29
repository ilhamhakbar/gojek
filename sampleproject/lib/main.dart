import 'package:flutter/material.dart';

import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectPage = 0;
  final _pageOptions = [
    HomePage(),
    Text('Item 2'),
    Text('Item 3'),
    Text('Item 4'),
    Text('Item 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coba',
      theme: ThemeData(
        fontFamily: "SFPro",
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.black
              ),
              color: Colors.white,
              textTheme: TextTheme(
                  title: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  )
              )
          ),
          backgroundColor: Colors.white,
          canvasColor: Colors.white
      ),
      home: Scaffold(
        body: _pageOptions[_selectPage],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectPage,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            onTap: (int index) {
              setState(() {
                _selectPage = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.work), title: Text('Order')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat), title: Text('Chat')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), title: Text('Inbox')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('Account')),
            ]),
      ),
    );
  }
}
