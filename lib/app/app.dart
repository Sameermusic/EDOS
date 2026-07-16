import 'package:flutter/material.dart';
import '../features/home/home_page.dart';

class EdosApp extends StatelessWidget {
  const EdosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EDOS',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF09090B),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2962FF),
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}