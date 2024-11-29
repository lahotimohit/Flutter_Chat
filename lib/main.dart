import 'package:flutter/material.dart';
import 'package:flutter_chat/screens/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 63, 17, 177)),
        useMaterial3: true,
      ),
      home: AuthScreen(),
    );
  }
}