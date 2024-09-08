import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ScheduleItem(
            time: "11:00-11:30",
            title: 'Открытие фестиваля "Услышь меня, я рядом!"',
            details: "Место: Лекторий 1\nСпикер: Организатор мероприятия",
          ),
          ScheduleItem(
            time: "11:30-13:00",
            title: "Ярмарка сообществ РЖЯ! Инклюзивные игры, викторины, конкурсы, рисование.",
            details: "Место: Общая зона 'Open space'\nСпикер: Сообщества РЖА",
          ),
          ScheduleItem(
            time: "12:00-13:00",
            title: "Игры для глухих.",
            details: 'Проект партнёр "Мир да Лад".',
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ScheduleItem(
                  time: "13:00-14:30",
                  title: "Лекторий (1)",
                  details: "– Вера Шамаева: зам председателя СПб РО ОООИ ВОГ \n– Елена Плащевская: основатель проекта «Тацида|РЖЯ». \n– Владимир Полянский: основатель проекта «Я вижу, что ты говоришь»",
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: ScheduleItem(
                  time: "13:00-14:30",
                  title: "Лекторий (2)",
                  details: "– Алевтина Белая: преподаватель проекта «Русский Жестовый Язык Diale»\n– Алексей Сухов: Директор подростково-молодёжного клуба «Патриот».",
                ),
              ),
            ],
          ),
          ScheduleItem(
            time: "14:30-15:00",
            title: "Фуршет!",
            details: "Место: Кухня.",
          ),
          ScheduleItem(
            time: "15:00-16:00",
            title: "Жестовое пение.",
            details: "(Детский образовательный коллектив «Слышим сердцем»), («Петербургская ЛекSема» творческий коллектив), (Клуб жестовой песни HandMusic).",
          ),
          ScheduleItem(
            time: "16:00-16:30",
            title: "Театральные постановки на жестовом языке.",
            details: "У театр.",
          ),
          ScheduleItem(
            time: "16:30",
            title: "Закрытие фестиваля, раздача призов.",
            details: "а что тут добавить?",
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
    bool shouldExpand = widget.title != "Закрытие фестиваля, раздача призов.";

    return GestureDetector(
      onTap: () {
        if (shouldExpand) {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple[100]!, Colors.purple[200]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  // Wrap the title text with Expanded or Flexible
                  Flexible(
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.visible, // Ensure the text is fully visible
                    ),
                  ),
                ],
              ),
              trailing: shouldExpand
              ? Icon(_isExpanded ? Icons.expand_less : Icons.expand_more)
              : null,
            ),
            if (_isExpanded && shouldExpand)
            Padding(
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
