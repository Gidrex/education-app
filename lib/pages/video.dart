import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideoScreen extends StatelessWidget {
  final String title;
  final String videoUrl;

  VideoScreen({required this.title, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    // Настройка контроллера WebView для загрузки видео с Mega
    final WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(videoUrl));  // Загружаем URL страницы Mega

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: WebViewWidget(controller: controller), // Используем WebView для отображения плеера Mega
    );
  }
}