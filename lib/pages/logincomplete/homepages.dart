import 'package:cloud_firestore/cloud_firestore.dart';
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
                      //เริ่มแก้
                    showRealtimeChange(),  ]),
        ),),);
  }

  Widget showRealtimeChange() {
    return Column(
      children: [
        const Text("คิวจองสนาม",style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                         fontSize: 20,
                          ),),
        createRealTimeDate(),
        const Divider(),
      ],
    );
  }

  Widget createRealTimeDate() {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection("Booking").snapshots(),
      builder: (context, snapshot) {
        print("คิวจองสนาม");
        print(snapshot.connectionState);
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          print(snapshot.data!.docs);
          return Column(
            children: createDataList(snapshot.data),
          );
        }
      },
    );
  }
List<Widget> createDataList(QuerySnapshot<Map<String, dynamic>>? data) {
    List<Widget> widgets = [];
    widgets = data!.docs.map((doc) {
      var data = doc.data();
      print(data['Field']);
      return ListTile(
        onTap: () {
          print(doc.id);
          // ดึงข้อมูล มาแสดง เพื่อแก้ไข
        },
        title: Text(
            "วันที่ " + data['day'] +  "       สนามที่ " + data['field']+ "      จำนวน   " + data['person']+ "  คน "),
        
       
      );
    }).toList();

    return widgets;
  }
}