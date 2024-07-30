import 'package:flutter/material.dart';

class ScheduleSection extends StatelessWidget {
  final String time;
  final String title;
  final String location;
  final String speaker;

  ScheduleSection({
    required this.time,
    required this.title,
    required this.location,
    required this.speaker,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          color: Colors.purple[100],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Text(
                      time,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text("Место: $location"),
                  SizedBox(height: 4.0),
                  Text("Спикер: $speaker"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
