import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homepages extends StatefulWidget {
  const Homepages({super.key});

  @override
  State<Homepages> createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Center(child: Text("สนามฟุตบอลมหาวิทยาลัยทักษิณฯ"), ), backgroundColor: Colors.greenAccent,),
        body: SafeArea(
          child: Container(
            child: Column(
               children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text('หน้าหลัก',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                         fontSize: 30,
                          ),),),
                  Divider(
                    thickness: 1,
                      indent: 50,
                        endIndent: 50,
                          color: Colors.black,
                      ),
                      
                      ]),
        ),),);
  }
}