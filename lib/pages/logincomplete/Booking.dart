import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
 final _fromkey = GlobalKey<FormState>();
 final TextEditingController _field = TextEditingController();
 final TextEditingController _day = TextEditingController();
 final TextEditingController _person = TextEditingController();
 final TextEditingController _tell = TextEditingController();
 String? status;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar( title: Center(child: Text("สนามฟุตบอลมหาวิทยาลัยทักษิณฯ"), ) ),
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
                Divider(//เส้่น
                  height: 1,
                  thickness: 1,
                  indent: 40,
                  endIndent: 40,
                  color: Colors.black,
                        ),
                      ],
                    ),
                    
                  ),
                ]
              ),
            Image.asset("", width: 300,
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
                    decoration: InputDecoration(
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
                    controller: _tell, ),))
          

                    
                     
          ]), 
        )
        
      )
    );
  }
}