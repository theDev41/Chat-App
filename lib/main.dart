import 'package:chat_app_firebase/screens/auth/login_screen.dart';
import 'package:chat_app_firebase/screens/home_screen.dart';
import 'package:chat_app_firebase/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';
// variable for screen size
late Size mq;

void main() async {


  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());



  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


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
      home:SplashScreen(),
    );
  }
}
