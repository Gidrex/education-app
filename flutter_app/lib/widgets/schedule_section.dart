import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ExpansionTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(
                  time,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Место: $location'),
                  if (speaker.isNotEmpty) ...[
                    SizedBox(height: 4),
                    Text('Спикер: $speaker'),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
