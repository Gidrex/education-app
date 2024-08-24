import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/schedule.dart';
import 'pages/video.dart';

void main() {
  runApp(FestivalScheduleApp());
}

class FestivalScheduleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
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
    SchedulePage(),
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
      backgroundColor: Colors.purple[100], // фиолетовый фон для Scaffold
      // appBar: AppBar(
      //   title: Text('Festival Schedule'),
      //   backgroundColor: Colors.purple,
      // ),
      body: Container(
        color: Colors.purple[100], // Цвет фона для содержимого
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black, width: 2.0), // Верхняя черная обводка
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.purple[200], // Фон нижней панели навигации
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
          selectedItemColor: Colors.red[700], // Цвет выбранного элемента
          unselectedItemColor: Colors.black, // Цвет невыбранных элементов
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
