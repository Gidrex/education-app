import 'package:flutter/material.dart';
import 'video.dart';

class VideoListScreen extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      'title': 'Урок 1',
      'videoUrl': 'https://mega.nz/embed/zYsDRAyb#HfyhfCNQbTZRrhMNZ6pzhzgJnCQ7YtunGj3978UECRQ',
      'posterUrl': 'lib/assets/poster1.jpg',
    },
    {
      'title': 'Урок 2',
      'videoUrl': 'https://mega.nz/embed/aIFnTAYb#SNaTWL4W1Odw8Q_b7JN5dm9LJ4TaHEfsMo22X4vq3_8',
      'posterUrl': 'lib/assets/poster2.jpg',
    },
    {
      'title': 'Урок 3',
      'videoUrl': 'https://mega.nz/embed/2ZEH3ILb#EXOL7ZU4BUUZUg7z6MzLEZzPwVy4WpTcIi8nrPXhfgo',
      'posterUrl': 'lib/assets/poster3.jpg',
    },
    {
      'title': 'Урок 4',
      'videoUrl': 'https://mega.nz/embed/rAMhXLgL#W4CXIz0dg8C4tWnAxfGa7HdopTWmkCHxnEEyJl_BGUQ',
      'posterUrl': 'lib/assets/poster4.jpg',
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
                SizedBox(height: 8),
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
