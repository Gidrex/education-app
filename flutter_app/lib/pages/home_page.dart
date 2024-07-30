import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'), // Обновите путь к фоновому изображению, если нужно
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            child: Text(
              'Услышь меня, я рядом!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.purple[100], // Цвет фона блока с описанием
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity, // Растягивание блока на всю ширину
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF82a1e4), // Установлен цвет фона #82a1e4
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      'Фестиваль',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Целью проекта является создание инклюзивных условий посредством реализации проекта «Фестиваль "Услышь меня, я рядом"» в период с 15 марта по 15 сентября 2024 года для 200 слепоглухих, глухих людей и их родственных-лиц, ориентируясь на популяризацию мира глухих.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black, // Цвет текста
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
