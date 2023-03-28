import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:thisisfinal/pages/loginuncolplete/login.dart';

import '../../service/auth_service.dart';


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
                      //แกภายใน
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
               ////////////////6
                Divider(
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                  color: Colors.black,
                ),//หัวเรื่อง







               ElevatedButton(
              
                  onPressed: () {
                   showConfirmDialog();
                  }, 
                  child: Text("Logout"), )  
              ],
            ),
          ),
        ),
      ),
    );
  }
   

 void showConfirmDialog() {
    var dialog = AlertDialog(
      title: const Text("Logout"),
      content: Text("ออกจากระบบ?"),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Back")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red[300]),
                foregroundColor: const MaterialStatePropertyAll(Colors.white)),
           onPressed: () {
            AuthService.logOutUser();
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Loginpage()));
                    
                  }, 
            child: Text("logout")),
      ],
    );
    showDialog(
      context: context,
      builder: (context) => dialog,
    );
  }


   
}