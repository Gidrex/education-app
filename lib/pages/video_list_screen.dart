import 'package:flutter/material.dart';
import 'video.dart';

class VideoListScreen extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      'title': 'Урок 1',
      'videoUrl': 'https://mega.nz/embed/zYsDRAyb#HfyhfCNQbTZRrhMNZ6pzhzgJnCQ7YtunGj3978UECRQ', // Прямая ссылка на видео
    },
    {
      'title': 'Урок 2',
      'videoUrl': 'https://mega.nz/embed/aIFnTAYb#SNaTWL4W1Odw8Q_b7JN5dm9LJ4TaHEfsMo22X4vq3_8',
    },
    {
      'title': 'Урок 3',
      'videoUrl': 'https://mega.nz/embed/2ZEH3ILb#EXOL7ZU4BUUZUg7z6MzLEZzPwVy4WpTcIi8nrPXhfgo',
    },
    {
      'title': 'Урок 4',
      'videoUrl': 'https://mega.nz/embed/rAMhXLgL#W4CXIz0dg8C4tWnAxfGa7HdopTWmkCHxnEEyJl_BGUQ',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Видео Уроки'),
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(Icons.play_arrow, size: 50, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8), // Отступ между видео и заголовком
                Text(
                  video['title'] ?? 'Без названия',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
