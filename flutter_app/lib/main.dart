import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/schedule_page.dart';
import 'pag:webview_flutter/webview_flutter.dart';

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
      title: 'WebView Video Demo',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEGA Video Player'),
      ),
      body: WebView(
        initialUrl: Uri.dataFromString(
          '''
          <html>
            <body style="margin: 0; padding: 0; overflow: hidden;">
              <iframe 
                width="100%" 
                height="100%" 
                frameborder="0" 
                src="https://mega.nz/embed/zYsDRAyb#HfyhfCNQbTZRrhMNZ6pzhzgJnCQ7YtunGj3978UECRQ" 
                allowfullscreen>
              </iframe>
            </body>
          </html>
          ''',
          mimeType: 'text/html',
          encoding: Encoding.getByName('utf-8')
        ).toString(),
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        },
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
