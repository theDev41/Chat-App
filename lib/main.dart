import 'package:chat_app_firebase/screens/auth/login_screen.dart';
import 'package:chat_app_firebase/screens/home_screen.dart';
import 'package:flutter/material.dart';

// variable for screen size
late Size mq;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(


        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 1,
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 19, fontWeight: FontWeight.normal),
            backgroundColor: Colors.white70),





      ),
      home:LoginScreen(),
    );
  }
}
