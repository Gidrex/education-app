import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ScheduleItem(
            time: "11:00 15.07.2024",
            title: "Открытие фестиваля",
            details: "Место: Лекторий 1\nСпикер: Организатор мероприятия",
          ),
          ScheduleItem(
            time: "11:30-12:30",
            title: "Ярмарка сообществ РЖА",
            details: "Место: Общая зона 'Open space'\nСпикер: Сообщества РЖА",
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ScheduleItem(
                  time: "12:30-13:00",
                  title: "Лекция: 'Что такое семья'",
                  details: "Место: Лекторий 2\nСпикер: Лектор",
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: ScheduleItem(
                  time: "12:30-13:00",
                  title: "Зона аниматоров РЖА",
                  details: "Место: Секция 1\nСпикер: Аниматор",
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ScheduleItem(
                  time: "13:00-14:00",
                  title: "Лекция: 'Что такое реклама и PR'",
                  details: "Место: Лекторий 1\nСпикер: Специалист по PR",
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: ScheduleItem(
                  time: "13:00-14:00",
                  title: "Лекция",
                  details: "Место: Секция 2\nСпикер: Лектор",
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ScheduleItem(
                  time: "13:00-13:30",
                  title: "Лекция: 'Что такое реклама и PR'",
                  details: "Место: Лекторий 2\nСпикер: Специалист по PR",
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: ScheduleItem(
                  time: "13:00-13:30",
                  title: "Лекция",
                  details: "Место: Секция 3\nСпикер: Лектор",
                ),
              ),
            ],
          ),
          ScheduleItem(
            time: "13:30-14:00",
            title: "Общий фуршет",
            details: "Место: Кухня\nСпикер: Организатор",
          ),
          ScheduleItem(
            time: "14:00-14:30",
            title: "Лекция: 'Что такое семья'",
            details: "Место: Лекторий 1\nСпикер: Лектор",
          ),
          ScheduleItem(
            time: "14:30-15:00",
            title: "Пение на жестовом языке",
            details: "Место: Лекторий 1\nСпикер: Певец",
          ),
          ScheduleItem(
            time: "15:00-15:30",
            title: "Театральные постановки на РЖА",
            details: "Место: Лекторий 1\nСпикер: Актёр",
          ),
          ScheduleItem(
            time: "15:30-16:00",
            title: "Закрытие фестиваля",
            details: "Место: Лекторий 1\nСпикер: Организатор",
          ),
        ],
      ),
    );
  }
}

class ScheduleItem extends StatefulWidget {
  final String time;
  final String title;
  final String details;

  ScheduleItem({
    required this.time,
    required this.title,
    required this.details,
  });

  @override
  _ScheduleItemState createState() => _ScheduleItemState();
}

class _ScheduleItemState extends State<ScheduleItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
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
                      widget.time,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    height: 40.0, // Установка высоты для двух строк
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
              ),
            ),
            if (_isExpanded)
              Container(
                color: Color(0xFFdddadf),
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  widget.details,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
