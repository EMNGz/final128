import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bookingpages extends StatelessWidget {
  const Bookingpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:Align(
  alignment: AlignmentDirectional(0, 0),
  child: Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(0, -0.95),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                    alignment: AlignmentDirectional(0, -0.8),
                    child: Text(
                    'จองสนาม', style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 30,
   ), 
     ),    
     ),
    ],
     ),
 ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: 40,
                  endIndent: 40,
                  color: Colors.black,
                ),
              ],
            ),
          ),
    ]),]
          
    ), )));
  }
}