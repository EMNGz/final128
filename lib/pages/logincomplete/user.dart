import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:thisisfinal/pages/loginuncolplete/login.dart';

import '../../service/auth_service.dart';


class Userpage extends StatefulWidget {
  const Userpage({super.key});

  @override
  State<Userpage> createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  
final user = FirebaseAuth.instance.currentUser!;
  @override
  
   Widget build(BuildContext context) {
    

    return Scaffold(  
      appBar: AppBar( title: const Text("สนามฟุตบอลมหาวิทยาลัยทักษิณฯ"),
        backgroundColor: Color.fromARGB(255, 72, 172, 123),
            ),
      
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
                      
                    ],
                  ),  ////////1
                ),
              



                showOnetimeRead(),



               ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 51, 51)),
                foregroundColor: const MaterialStatePropertyAll(Colors.white)),
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

Widget showOnetimeRead() {
    return Column(
      children: [
        createOnetimeRealData(),
        const Divider(),
      ],
    );
  }
   Widget createOnetimeRealData() {
    return FutureBuilder(
      future: FirebaseFirestore.instance.collection("Users").get(),
      builder: (context, snapshot) {
        
        print(snapshot.connectionState);
        if (snapshot.connectionState == ConnectionState.done) {
          return Column(
            children: createDataList(snapshot.data),
          );
        } else {
          return const Text("Waiting Data");
        }
      },
    );
  }

  List<Widget> createDataList(QuerySnapshot<Map<String, dynamic>>? data) {
    List<Widget> widgets = [];
    widgets = data!.docs.map((doc) {
      var data = doc.data();
      print(data['Users']);
      return ListTile(
        onTap: () {
          print(doc.id);
          // ดึงข้อมูล มาแสดง เพื่อแก้ไข
        },
       title: Column(
          children: [
            Text(
                "    Username :   " + data['username']),
            Text(
              
               "    ชื่อ :   "+ data['name']),
                Text(
                "    เบอร์มือถือ :   " + data['tel']),

                Text("Uid :  " +user.uid),
                
                
          ],
        ),
        
      
      );
    }).toList();

    return widgets;
  }

}
