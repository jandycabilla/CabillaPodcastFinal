import 'package:flutter/material.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'data_page.dart';

void main() {
  runApp(PodcastApp());
}

class PodcastApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podcast Information',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/data': (context) => DataPage(),
      },
    );
  }
}

