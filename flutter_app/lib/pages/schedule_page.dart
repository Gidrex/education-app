import 'package:flutter/material.dart';
import '../widgets/schedule_section.dart';

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
          color: Colors.purple[100]!,
        ),
        ScheduleSection(
          time: "11:30-12:30",
          title: "Ярмарка сообществ РЖА",
          location: "Общая зона 'Оpen space'",
          speaker: "Сообщества РЖА",
          color: Colors.purple[100]!,
        ),
        Row(
          children: [
            Expanded(
              child: ScheduleSection(
                time: "12:30-13:00",
                title: "Лекция: 'Что такое семья'",
                location: "Лекторий 2",
                speaker: "Клара Бернаскони",
                color: Colors.purple[100]!,
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: ScheduleSection(
                time: "12:30-13:00",
                title: "Зона аниматоров РЖА",
                location: "Общая зона 'Оpen space'",
                speaker: "",
                color: Colors.purple[100]!,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Expanded(
              child: ScheduleSection(
                time: "13:00-14:00",
                title: "Лекция: 'Что такое реклама и PR'",
                location: "Лекторий 1",
                speaker: "Михаил Иванов",
                color: Colors.purple[100]!,
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: ScheduleSection(
                time: "13:00-14:00",
                title: "Лекция",
                location: "Секция 3",
                speaker: "",
                color: Colors.purple[100]!,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Expanded(
              child: ScheduleSection(
                time: "13:00-13:30",
                title: "Лекция: 'Что такое реклама и PR'",
                location: "Лекторий 2",
                speaker: "",
                color: Colors.purple[100]!,
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: ScheduleSection(
                time: "13:00-13:30",
                title: "Лекция",
                location: "Секция 4",
                speaker: "",
                color: Colors.purple[100]!,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        ScheduleSection(
          time: "13:30-14:00",
          title: "Общий фуршет",
          location: "Кухня",
          speaker: "",
          color: Colors.purple[100]!,
        ),
        ScheduleSection(
          time: "14:00-14:30",
          title: "Лекция: 'Что такое семья'",
          location: "Лекторий 1",
          speaker: "Дарья Чайковская",
          color: Colors.purple[100]!,
        ),
        ScheduleSection(
          time: "14:30-15:00",
          title: "Пение на жестовом языке",
          location: "Лекторий 1",
          speaker: "",
          color: Colors.purple[100]!,
        ),
        ScheduleSection(
          time: "15:00-15:30",
          title: "Театральные постановки на РЖА",
          location: "Лекторий 1",
          speaker: "",
          color: Colors.purple[100]!,
        ),
        ScheduleSection(
          time: "15:30-16:00",
          title: "Закрытие фестиваля",
          location: "Лекторий 1",
          speaker: "",
          color: Colors.purple[100]!,
        ),
      ],
    );
  }
}
