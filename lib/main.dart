import 'package:cc206_peracon/components/analytics_tab.dart';
import 'package:cc206_peracon/components/ask_tab.dart';
import 'package:cc206_peracon/components/home_tab.dart';
import 'package:cc206_peracon/features/learn_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/home',// Create the routes here
      routes: {
        '/home':(BuildContext ctx) => HomePage(),
        '/learn':(BuildContext ctx) => LearnPage(),
        '/ask':(BuildContext ctx) => AskPage(),
        '/analytics':(BuildContext ctx) => AnalyticsPage(),



      },
    );
  }
}