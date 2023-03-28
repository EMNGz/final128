import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thisisfinal/pages/logincomplete/completelogin.dart';
import 'package:thisisfinal/pages/logincomplete/user.dart';
import 'package:thisisfinal/pages/loginuncolplete/login.dart';
import 'package:thisisfinal/pages/loginuncolplete/register.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      home: const Loginpage(),
    );
  }
}

