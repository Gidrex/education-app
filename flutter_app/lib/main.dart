import 'package:flutter/material.dart';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';

typedef RustAdd = Int32 Function(Int32, Int32);
typedef RustAddDart = int Function(int, int);

void main() {
  runApp(const MyApp());

  final rustLib = DynamicLibrary.open('rust_lib.so');
  final RustAdd rustAdd = rustLib
  .lookup<NativeFunction<RustAdd>>('rust_add')
  .asFunction<RustAddDart>();

  print('1 + 2 = ${rustAdd(1, 2)}');
  runApp(FestivalScheduleApp());
}

class FestivalScheduleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Festival Schedule'),
        ),
        body: FestivalSchedulePage(),
      ),
    );
  }
}

class FestivalSchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        ScheduleSection(
          time: "11:00 15.07.2024",
          title: "Открытие фестиваля",
          location: "Лекторий 1",
          speaker: "Организатор мероприятия",
          color: Colors.purple[200],
        ),
        ScheduleSection(
          time: "11:30-12:30",
          title: "Ярмарка сообществ РЖА",
          location: "Общая зона 'Оpen space'",
          speaker: "Сообщества РЖА",
          color: Colors.purple[100],
        ),
        // Add more sections based on the image provided
        // ...
        ScheduleSection(
          time: "15:30-16:00",
          title: "Закрытие фестиваля",
          location: "Лекторий 1",
          speaker: "",
          color: Colors.purple[200],
        ),
      ],
    );
  }
}

class ScheduleSection extends StatelessWidget {
  final String time;
  final String title;
  final String location;
  final String speaker;
  final Color color;

  ScheduleSection({
    required this.time,
    required this.title,
    required this.location,
    required this.speaker,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text('Место: $location'),
            if (speaker.isNotEmpty) ...[
              SizedBox(height: 4),
              Text('Спикер: $speaker'),
            ],
          ],
        ),
      ),
    );
  }
}
