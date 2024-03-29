import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black),
        ),
      ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
        routes: {
        RegistrationScreen.id: (context)=> RegistrationScreen(),
        LoginScreen.id: (context)=> LoginScreen(),
        ChatScreen.id: (context)=> ChatScreen(),
        WelcomeScreen.id: (context)=> WelcomeScreen(),
      }
    );
  }
}
