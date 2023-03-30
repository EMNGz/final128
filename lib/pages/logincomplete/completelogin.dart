
import 'package:flutter/material.dart';
import 'package:thisisfinal/pages/logincomplete/Booking.dart';
import 'package:thisisfinal/pages/logincomplete/homepages.dart';
import 'package:thisisfinal/pages/logincomplete/user.dart';

class completelogin extends StatefulWidget {
  const completelogin({super.key});

  @override
  State<completelogin> createState() => _completeloginState();
}

class _completeloginState extends State<completelogin> {
  int currentIndex = 0 ;
  List widgetOption = [
    Homepages(),
    Booking(),
    Userpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetOption[currentIndex], ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
         BottomNavigationBarItem(icon: Icon(Icons.book_online),label: 'booking'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'user'),
      ],
      currentIndex: currentIndex,
      onTap: (index)=> setState(() => currentIndex = index ),),
    ) ;
  }
}
