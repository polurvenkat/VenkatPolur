import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/about.dart';
import 'screens/work.dart';
import 'screens/articles.dart';
import 'screens/contact.dart';

void main() => runApp(MyPortfolioApp());

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venkatmahesh Polur',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          // Updated with new Material 3 text styles
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(fontSize: 12),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/about': (_) => AboutScreen(),
        '/work': (_) => WorkScreen(),
        '/articles': (_) => ArticlesScreen(),
        '/contact': (_) => ContactScreen(),
      },
    );
  }
}