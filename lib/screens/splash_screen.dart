import 'package:chat_app_firebase/screens/auth/login_screen.dart';
import 'package:chat_app_firebase/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {

  bool _isAnimate = false;

  @override
  void initState() {

    super.initState();
  Future.delayed(const Duration(milliseconds: 1500) , (){

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));



  });


  }
  @override
  Widget build(BuildContext context) {

    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
      elevation: 0,
backgroundColor: Colors.white,
        title: Text('Welcome to the Chat App'),

      ),
      body: Container(
        color: Colors.white,
        child: Stack(children: [



          //animation widget code

          AnimatedPositioned(

              top:mq.height * .15,
              width: mq.width * .5,
              right:mq.width * .25 ,


              duration: Duration(seconds: 1),
              child: Image.asset('assets/images/meetme.png')),
          Positioned(
            bottom: mq.height * .05, // adjust spacing from bottom if needed
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "made by Istiaq Ahmad",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), // optional styling
              ),
            ),
          ),

        ],),
      ),



    );
  }
}
