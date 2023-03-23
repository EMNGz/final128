import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:thisisfinal/pages/completelogin.dart';
import 'package:thisisfinal/pages/register.dart';
import '../service/auth_service.dart';

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
        title: const Text("Login"),
      ),
      body: SafeArea(
        child: Form(
          key: _fromkey,
          child: ListView(
            children: [
              Text("Email :"),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "กรุณากรอก Email";
                  }
                },
              ),
              Text("Password :"),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "กรุณากรอก Password";
                  }
                },
              ),
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
                  child: const Text("Login")),


GoogleAuthButton(
              onPressed: () {
                GoogleAuthService().singinwithGoogle();
              },
            ),
ElevatedButton(
                onPressed: () {
                  GoogleAuthService().googleSingOut();
                },
                child: Text("Sign out")),
              //ไม่ต้องไปยุ่งมัน
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registerpage()));
                  },
                  child: const Text("Register"))
            ],
          ),
        ),
      ),
    );
  }
}
