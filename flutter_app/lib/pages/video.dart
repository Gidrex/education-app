import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoPage extends StatelessWidget {
  final List<VideoItem> videos = [
    VideoItem(
      date: '10.04.2024',
      title: 'Встреча 1',
      topic: 'Знакомство, дактиль',
      imagePath: '../assets/background.png', // Путь к первой фотографии
      videoUrl: 'https://cloudservice.com/video1', // Embed ссылка на видео
    ),
    VideoItem(
      date: '25.04.2024',
      title: 'Встреча 2',
      topic: 'Числа',
      imagePath: '../assets/background.png', // Путь ко второй фотографии
      videoUrl: 'https://cloudservice.com/video2', // Embed ссылка на видео
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.purple[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.purple[200],
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      videos[index].date,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(8.0),
                    leading: GestureDetector(
                      onTap: () async {
                        final url = videos[index].videoUrl;
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Image.asset(
                        videos[index].imagePath,
                        fit: BoxFit.cover,
                        width: 100,
                      ),
                    ),
                    title: Text(videos[index].title),
                    subtitle: Text(videos[index].topic),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class VideoItem {
  final String date;
  final String title;
  final String topic;
  final String imagePath;
  final String videoUrl;

  VideoItem({
    required this.date,
    required this.title,
    required this.topic,
    required this.imagePath,
    required this.videoUrl,
  });
}
