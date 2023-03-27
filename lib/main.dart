import 'package:flutter/material.dart';
import 'package:thisisfinal/pages/logincomplete/completelogin.dart';
import 'package:thisisfinal/pages/loginuncolplete/login.dart';
import 'package:thisisfinal/pages/loginuncolplete/register.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const completelogin(),
    );
  }
}

