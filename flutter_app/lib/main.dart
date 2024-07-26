import 'package:flutter/material.dart';

void main() {
  runApp(FestivalScheduleApp());
}

class FestivalScheduleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FestivalHomePage(),
    );
  }
}

class FestivalHomePage extends StatefulWidget {
  @override
  _FestivalHomePageState createState() => _FestivalHomePageState();
}

class _FestivalHomePageState extends State<FestivalHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    FestivalSchedulePage(),
    Center(child: Text('Главная', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    Center(child: Text('Обучение', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Festival Schedule'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Расписание',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Обучение',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
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
          color: Colors.purple[300]!,
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
