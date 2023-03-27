import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:thisisfinal/pages/loginuncolplete/login.dart';
import 'package:thisisfinal/pages/loginuncolplete/register.dart';

class Userpage extends StatefulWidget {
  const Userpage({super.key});

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar( title: Center(child: Text("สนามฟุตบอลมหาวิทยาลัยทักษิณฯ"), ),
      backgroundColor: Colors.greenAccent, ),
      body: SafeArea(
        child: GestureDetector(
          
          child: Container(
            width: 400,
            height: 900,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Column( //////////////1
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          'จัดการผู้ใช้',
                             style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 30,
        ),   
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 50,
                        endIndent: 50,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            '',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),  ////////1
                ),
                Row( /////////2
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 40, 20, 0),
                      child: Text(
                        'ชื่อ :',
                       
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 20, 0),
                      child: Text(
                        'pong',
                       
                      ),
                    ),
                  ],
                ), /////////2
                Row(////////////3
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 30, 20, 0),
                      child: Text(
                        'เบอร์โทร :',
                       
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Text(
                        '08423',
                        
                      ),
                    ),
                  ],
                ),///////////////3
                Row(//////////////4
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 30, 20, 0),
                      child: Text(
                        'อีเมล :',
                        
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Text(
                        '@gmail',
                        
                      ),
                    ),
                  ],
                ),/////////////////4
                Row(/////////////////5
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 30, 20, 0),
                      child: Text(
                        'ที่อยู่ :',
                        
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Text(
                        'Hello World',
                        
                      ),
                    ),
                  ],
                ),//////////////////5
                Row(/////////////////6
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 30, 20, 0),
                      child: Text(
                        'Uid :',
                        
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Text(
                        '083',
                        
                      ),
                    ),
                  ],
                ),///////////////////6
                Divider(
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                  color: Colors.black,
                ),
               ElevatedButton(
              
                  onPressed: () {
                   
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Loginpage()));
                  }, 
                  child: Text("Logout"), )  
              ],
            ),
          ),
        ),
      ),
    );
  }
}