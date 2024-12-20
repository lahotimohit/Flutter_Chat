import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/screens/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_chat/screens/chats.dart';
import 'package:flutter_chat/screens/splash.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
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
      home: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting) {
          return const SplashScreen();
        }
        if(snapshot.hasData) {
          return const ChatScreen();
        }
        return const AuthScreen();
      },)
    );
  }
}