import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:thisisfinal/pages/logincomplete/completelogin.dart';
import 'package:thisisfinal/pages/loginuncolplete/register.dart';
import '../../service/auth_service.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _fromkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("สนามฟุตบอลมหาวิทยาลัยทักษิณฯ"),
        backgroundColor: Color.fromARGB(255, 72, 172, 123),
            ),
      body: Container( color: Color.fromARGB(255, 227, 228, 193),
        child: Form(
          key: _fromkey,
          child: ListView( 
            children: [ 
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                    "Sing In",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ),Divider(
              thickness: 1,
              color: Colors.black87,
              indent: 50,
              endIndent: 50,
            ),
               Padding(
                 padding:EdgeInsetsDirectional.fromSTEB(50, 5, 50, 0),
                 child: Image.asset("assets/football.jpg", width: 300,
                    height: 150,fit: BoxFit.cover),
               ),
              
              //google login
          //  GoogleAuthButton(
           //   onPressed: () {
            //    GoogleAuthService().singinwithGoogle();
             // },
          //  ), 
              //googlelogin
            // ElevatedButton(
            //    onPressed: () {
              //    GoogleAuthService().googleSingOut();
            //    },
         //       child: Text("Sign out")),
          // Column(children: [
              //         Divider(
            //  thickness: 1,
          //    color: Colors.black87,
        //      indent: 50,
           //   endIndent: 50,
       //     ), 
       //         Text("OR"),
           //   Divider(
        //      thickness: 1,
        //      color: Colors.black87,
        //      indent: 50,
        //      endIndent: 50,
     //       ),
     //     ]),
     Divider(
              thickness: 1,
              color: Colors.black87,
              indent: 50,
              endIndent: 50,),



              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 5, 50, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 72, 172, 123),),),
                    prefixIcon: Icon(Icons.account_box),
                      labelText: "Email",
                      ),
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "กรุณากรอก Email";
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 5, 50, 0),
                child: TextFormField(
                  obscureText: true,
                 decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 72, 172, 123),),),
                    prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      ),
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "กรุณากรอก Password";
                    }
                  },
                ),
              ),
              //Column(children: [
             //          Divider(
            //  thickness: 1,
            //  color: Colors.black87,
           ///   indent: 50,
           //   endIndent: 50,
          //  ),
         // ]),
             
             
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 5, 50, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 0, 170, 14)),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {
                      if (_fromkey.currentState!.validate()) {
                        AuthService.loginUser(
                                _emailController.text, _passwordController.text)
                            .then((value) {
                          if (value == 1) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => completelogin()),
                            );
                          }
                        });
                        
                      }
                    },
                    child: const Text("Sing in")),
              ),
          Column(children: [
            Divider(
              thickness: 1,
                color: Colors.black87,
                  indent: 50,
                    endIndent: 50,
            ),
          ]),
              //ไม่ต้องไปยุ่งมัน
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 5, 50, 0),
                child: ElevatedButton(
                    style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 122, 55, 177)),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                          MaterialPageRoute(
                            builder: (context) => Registerpage()));
                  }, 
                    child:  Text("Sing Up")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
