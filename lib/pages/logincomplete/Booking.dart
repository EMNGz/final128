

import 'package:flutter/material.dart';
import 'package:thisisfinal/pages/logincomplete/completelogin.dart';

import '../../service/auth_service.dart';
class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
 final _formkey = GlobalKey<FormState>();
 final TextEditingController _field = TextEditingController();
 final TextEditingController _day = TextEditingController();
 final TextEditingController _person = TextEditingController();
 final TextEditingController _tell = TextEditingController();
 String? status;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    
      appBar: AppBar( title: Center(child: Text("สนามฟุตบอลมหาวิทยาลัยทักษิณฯ"), ), backgroundColor: Color.fromARGB(255, 72, 172, 123),),
      body: SafeArea(
        child:Align(
  alignment: AlignmentDirectional(0,-1),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: AlignmentDirectional(0, -0.95),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: 
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                Divider(//เส้่น
                   thickness: 1,
                        indent: 50,
                        endIndent: 50,
                        color: Colors.black,
                        ),
                      ],
                    ),
                    
                  ),
                ]
              ),
            Image.asset("assets/sxd.jpg", width: 300,
                  height: 150,),
           Align(
                    alignment: AlignmentDirectional(-0.7, 1),
                    child: Text(
                    'สนามที่ :', style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),height: 2,
                    
        ), 
       ),    
      ), 
      Align(
          alignment: AlignmentDirectional(0, 0),
            child: Container(
                width: 280,height: 40, child:
                 TextFormField(
                    decoration: InputDecoration(
                     
                      enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                          color: Colors.black,
                           width: 1,
                             ),),
                                 ), 
                                  controller: _field, 
),)), 
                    Align(
                    alignment: AlignmentDirectional(-0.7, 1),
                    child: Text(
                    'วันที่ :', style: TextStyle(
                      
                    color: Color.fromARGB(255, 0, 0, 0),height: 2,
                    
                      ), 
                          ),    
                                ), 
      Align(
          alignment: AlignmentDirectional(0, 0),
            child: Container(
                width: 280,height: 40, child:
                 TextFormField(
                    decoration: InputDecoration( hintText: 'dd/mm/yy',
                      enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                          color: Colors.black,
                           width: 1,
                             ),),
                                
),
                                  controller: _day, 
),)),
                    Align(
                    alignment: AlignmentDirectional(-0.7, 1),
                    child: Text(
                    'จำนวนคน :', style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),height: 2,
                    
        ), 
       ),    
      ), 
      Align(
          alignment: AlignmentDirectional(0, 0),
            child: Container(
                width: 280,height: 40, child:
                 TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                          color: Colors.black,
                           width: 1,
                             ),),
                                
                    ),
                    controller: _person, ),)), 

           Align(
                    alignment: AlignmentDirectional(-0.55, 1),
                    child: Text(
                    'เบอร์โทรที่สามารถติดต่อได้ :', style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),height: 2,
                    
        ), 
       ),    
      ), 
      Align(
          alignment: AlignmentDirectional(0, 0),
            child: Container(
                width: 280,height: 40, child:
                 TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                          color: Colors.black,
                           width: 1,
                             ),),
                                
                    ),
                    controller: _tell, ),)), 
        ElevatedButton(
          style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 16, 216, 33)),
                foregroundColor: const MaterialStatePropertyAll(Colors.white)),
          onPressed: () {
          showConfirmDialog();
        },
                  child: Text("ยืนยัน"), )                
          ]), 
        )
        
      )
    );
  }

  void showConfirmDialog() {
    var dialog = AlertDialog(
      title: const Text("ยืนยัน"),
      content: Text("ยืนยันการจอง?"),
      actions: [
        ElevatedButton( style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 0, 0)),
                foregroundColor: const MaterialStatePropertyAll(Colors.white)),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Back")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 0, 255, 21)),
                foregroundColor: const MaterialStatePropertyAll(Colors.white)),
           onPressed: () {
             Bookingfield()
              .fieldBooking(
                  _field.text, _day.text, _person.text, _tell.text)
              .then((value) => Navigator.pushReplacement(context,
                        MaterialPageRoute(
                          builder: (context) => completelogin())));
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => completelogin()));
                    
                  }, 
            child: Text("ยืนยัน")),
      ],
    );
    showDialog(
      context: context,
      builder: (context) => dialog,
    );
  }

}