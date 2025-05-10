import 'package:chat_app_firebase/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LoginScreen> {

  bool _isAnimate = false;

  @override
  void initState() {

    super.initState();

    Future.delayed(Duration(milliseconds: 500),(){

      setState(() {
        _isAnimate = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(

        title: Text('Welcome to the Chat App'),

      ),
 body: Stack(children: [

     AnimatedPositioned(

       top:mq.height * .15,
         width: mq.width * .5,
         right:_isAnimate ? mq.width * .25 : -mq.width * .5,


         duration: Duration(seconds: 1),
         child: Image.asset('assets/images/meetme.png')),
   Positioned(


       bottom:mq.height * .15,
       width: mq.width * .9,
       left: mq.width * .05,
       height: mq.height *.07,





       child: ElevatedButton.icon(
         style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green.shade300,

         ),

         onPressed: (){

           Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen()));

         },
         icon:Image.asset('assets/images/google.png',height: mq.height * .05,) , label: Text('Login with Google',style: TextStyle(color: Colors.black,fontSize: 18),), ))
 ],),



    );
  }
}
