import 'package:flutter/material.dart';
import 'video.dart';

class VideoListScreen extends StatelessWidget {
  final List<Map<String, String>> videos = [
  {
    'title': 'Встреча 1',
    'theme': 'Знакомство, дактиль',
    'date': '10.04.2024',
    'time': '12:00-13:00',
    'videoUrl': 'https://mega.nz/embed/zYsDRAyb#HfyhfCNQbTZRrhMNZ6pzhzgJnCQ7YtunGj3978UECRQ',
    'posterUrl': 'lib/assets/poster1.jpg',
  },
  {
    'title': 'Встреча 2',
    'theme': 'Числа',
    'date': '25.04.2024',
    'time': '12:00-13:00',
    'videoUrl': 'https://mega.nz/embed/aIFnTAYb#SNaTWL4W1Odw8Q_b7JN5dm9LJ4TaHEfsMo22X4vq3_8',
    'posterUrl': 'lib/assets/poster2.jpg',
  },
  {
    'title': 'Встреча 3',
    'theme': 'Календарь',
    'date': '10.05.2024',
    'time': '18:00-19:00',
    'videoUrl': 'https://mega.nz/embed/2ZEH3ILb#EXOL7ZU4BUUZUg7z6MzLEZzPwVy4WpTcIi8nrPXhfgo',
    'posterUrl': 'lib/assets/poster3.jpg',
  },
  {
    'title': 'Встреча 4',
    'theme': 'Время года',
    'date': '25.05.2024',
    'time': '16:00-17:00',
    'videoUrl': 'https://mega.nz/embed/rAMhXLgL#W4CXIz0dg8C4tWnAxfGa7HdopTWmkCHxnEEyJl_BGUQ',
    'posterUrl': 'lib/assets/poster4.jpg',
  },
  {
    'title': 'Встреча 5',
    'theme': 'Образование прошлого и будущего времени.',
    'date': '06.06.2024',
    'time': '13:00-14:00',
    'videoUrl': 'https://mega.nz/embed/SJMXCL6S#3bxQSE1A41fBiwcJOnd941OX9rxiyI5-2QXYmO84RSk',
    'posterUrl': 'lib/assets/poster5.jpg',
  },
  {
    'title': 'Встреча 6',
    'theme': 'Семья',
    'date': '20.06.2024',
    'time': '17:00-18:00',
    'videoUrl': 'https://mega.nz/embed/WFdm1DhD#FRjWQbuegoVBTdxw_oWLgE9HdTzElPeqhG1LCFZv5pg',
    'posterUrl': 'lib/assets/poster6.jpg',
  },
  {
    'title': 'Встреча 7',
    'theme': 'Структура жеста',
    'date': '26.06.2024',
    'time': '12:00-13:00',
    'videoUrl': 'https://mega.nz/embed/iJVCURJC#Bc46lRTJ5evOCPJ0ilTgsCR673tFw1CbRbJLuwrVYkc',
    'posterUrl': 'lib/assets/poster7.jpg',
  }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3E5F5),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: videos.length + 1,
            itemBuilder: (context, index) {
              if (index == videos.length) {
                return Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFCE93D8), Color(0xFFD1C4E9)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Ты молодец!! Спасибо за пройденный КУРС!)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }

              final video = videos[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFCE93D8), Color(0xFFD1C4E9)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          video['date'] ?? '',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFCE93D8), Color(0xFFD1C4E9)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFAB47BC), Color(0xFFBA68C8)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              video['time'] ?? '',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            video['title'] ?? '',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Тема: ${video['theme'] ?? ''}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoScreen(
                                      title: video['title'] ?? '',
                                      videoUrl: video['videoUrl'] ?? '',
                                    ),
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image: AssetImage(video['posterUrl'] ?? 'assets/default_poster.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.play_circle_outline,
                                      size: 80.0,
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              );
            },
          ),
          Positioned(
            top: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      backgroundColor: Color(0xFFF3E5F5),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Данные курсы предназначены для волонтёров, которые хотят выучить русский жестовый язык и помогать глухим/слабослышащим людям. Обучающие курсы и фестиваль станут отправной точкой для волонтёров РЖЯ.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text('Окей'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              backgroundColor: Color(0xFFAB47BC),
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
