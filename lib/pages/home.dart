import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'), 
            // fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.only(top: 32.0, bottom: 16.0),
              decoration: BoxDecoration(
                color: Color(0xFFeadaf2),
                borderRadius: BorderRadius.circular(32.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              child: Text(
                'Услышь меня, я рядом!',
                style: TextStyle(
                  fontSize: 24.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF82a1e4),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Center(
                      child: Text(
                        'Фестиваль',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Целью проекта является создание инклюзивных условий посредствам реализации проекта «Фестиваль «Услышь меня, я рядом»  в период с 15 марта по 15 сентября 2024 года для 200 слабослышащих, глухих людей и их родственников, ориентируясь на популяризацию мира глухих.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
