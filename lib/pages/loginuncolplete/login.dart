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
        backgroundColor: Colors.greenAccent,
            ),
      body: SafeArea(
        child: Form(
          key: _fromkey,
          child: Column(
            children: [ 
              Text(
                  "Sing In",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),Divider(
              thickness: 1,
              color: Colors.black87,
              indent: 50,
              endIndent: 50,
            ),
              Image.asset('thisisfinal\photo\1.jpg',fit: BoxFit.cover),
            GoogleAuthButton(
              onPressed: () {
                GoogleAuthService().singinwithGoogle();
              },
            ), 
           Column(children: [
                       Divider(
              thickness: 1,
              color: Colors.black87,
              indent: 50,
              endIndent: 50,
            ), 
                Text("OR"),
              Divider(
              thickness: 1,
              color: Colors.black87,
              indent: 50,
              endIndent: 50,
            ),
          ]),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 255, 13),),),
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
              TextFormField(
               decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 255, 13),),),
                  prefixIcon: Icon(Icons.account_box),
                    labelText: "Password",
                    ),
                controller: _passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "กรุณากรอก Password";
                  }
                },
              ),
              Column(children: [
                       Divider(
              thickness: 1,
              color: Colors.black87,
              indent: 50,
              endIndent: 50,
            ),
          ]),
             
             
              ElevatedButton(
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
                      ;
                    }
                  },
                  child: const Text("Sing in")),
          Column(children: [
            Divider(
              thickness: 1,
                color: Colors.black87,
                  indent: 50,
                    endIndent: 50,
            ),
          ]),
              //ไม่ต้องไปยุ่งมัน
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                        MaterialPageRoute(
                          builder: (context) => Registerpage()));
                }, 
                  child:  Text("Sing Up"))
            ],
          ),
        ),
      ),
    );
  }
}
