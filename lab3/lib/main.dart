import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Lab3',
        theme: ThemeData(
          colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: const Color.fromARGB(255, 85, 57, 8),
            onPrimary: Colors.white,
            secondary: const Color.fromARGB(255, 118, 98, 64),
            onSecondary: Colors.white,
            error: Colors.red.shade700,
            onError: Colors.white,
            background: const Color.fromARGB(255, 33, 24, 10),
            onBackground: Colors.white,
            surface: const Color.fromARGB(255, 53, 39, 20),
            onSurface: Colors.white,
          ),
          scaffoldBackgroundColor: const Color.fromARGB(255, 33, 24, 10),
        ),
        themeMode: ThemeMode.light,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Lab3'),
          ),
          body: const MainPage(),
        ),
      );
}
