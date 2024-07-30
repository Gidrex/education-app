import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/schedule_page.dart';

void main() {
  runApp(FestivalScheduleApp());
}

class FestivalScheduleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FestivalHomePage(),
    );
  }
}

class FestivalHomePage extends StatefulWidget {
  @override
  _FestivalHomePageState createState() => _FestivalHomePageState();
}

class _FestivalHomePageState extends State<FestivalHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    FestivalSchedulePage(),
    MainPage(),
    Center(child: Text('Обучение', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Festival Schedule'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Расписание',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Обучение',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
