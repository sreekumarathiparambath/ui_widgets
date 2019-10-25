import 'package:flutter/material.dart';
import 'package:ui_widgets/screen/home.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Widgets',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
    );
  }
}
