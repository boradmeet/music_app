import 'package:flutter/material.dart';
import 'package:music_app/screens/home_page.dart';
import 'package:music_app/screens/player_page.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "player_page": (context) => const PlayerPage(),
      },
    ),
  );
}
