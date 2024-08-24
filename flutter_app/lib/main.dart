import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/schedule_page.dart';
import 'package:video_player/video_player.dart';


void main() {
  runApp(FestivalScheduleApp());
  runApp(VideoApp());
}

class FestivalScheduleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FestivalHomePage(),
    );
  }
}



class VideoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Здесь указываешь публичную ссылку на видео с MEGA
    _controller = VideoPlayerController.network(
        'https://mega.nz/folder/SI8WRCCR#4HAt8FOQU7xpep5TxvLDxw') 
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Demo'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
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
