import 'package:flutter/material.dart';
import 'tabs/home_page.dart';
import 'tabs/user_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void onChange(String content) {
    print("content == " + content);
  }

  int _selectedIndex = 0;
  int _itemCount=20;


  static TextEditingController _editingController = new TextEditingController();

  final _widgetOptions = [
    new HomePage(),
    ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(20.0),
            child: Text('index $index'),
          );
        }),
   UserPage(),
  ];



  final _titles = ['home', 'business', 'school'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles.elementAt(_selectedIndex)),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.record_voice_over), title: Text('推荐')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text('我的')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
