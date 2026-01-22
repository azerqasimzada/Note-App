import 'package:flutter/material.dart';
import 'package:note_app/core/appbar_color.dart';
import 'package:note_app/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: AppbarColor.appbarColor,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
          iconTheme: const IconThemeData(color: Colors.white), 
          actionsIconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: HomeScreen(),
    );
       
  }
}