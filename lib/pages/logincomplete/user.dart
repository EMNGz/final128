import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Userpage extends StatefulWidget {
  const Userpage({super.key});

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar( title: Center(child: Text("สนามฟุตบอลมหาวิทยาลัยทักษิณฯ"), ) ),
      body: SafeArea(
        child: GestureDetector(
          
          child: Container(
            width: 400,
            height: 900,
            decoration: BoxDecoration(
              
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Column(
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
                  ),
                ),
                Row(
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
                ),
                Row(
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
                ),
                Row(
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
                ),
                Row(
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
                ),
                Row(
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
                ),
                Divider(
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                  color: Colors.black,
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}