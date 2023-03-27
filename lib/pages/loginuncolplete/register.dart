import 'package:flutter/material.dart';
import 'package:thisisfinal/pages/loginuncolplete/login.dart';
import 'package:auth_buttons/auth_buttons.dart';
import '../../service/auth_service.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final _fromkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _tel = TextEditingController();
  final TextEditingController _name = TextEditingController();
  String? status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("สนามฟุตบอลมหาวิทยาลัยทักษิณฯ"), ), backgroundColor: Colors.greenAccent,
      ),
      body: 

      
      SafeArea(
        child: Form(
          key: _fromkey,
          child: ListView(
            children: [ 
               Text(
                  "REGISTER",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ), Divider(
              thickness: 1,
              color: Colors.black87,
              indent: 50,
              endIndent: 50,
            ),
              buildEmailInput(),
              buildPasswordInput(),
              buildNameInput(),
              buildTelInput(),             
              buildEmailSignUp(),
              
            ],
          ),
        ),
      ),
      
    );
  }

  TextFormField buildEmailInput() {
    return TextFormField(
      decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
      color: Color.fromARGB(255, 0, 255, 13),),),
      labelText: "Email",
      ),
      controller: _email,
      validator: (value) {
        if (value!.isEmpty) {
          return "กรุณากรอก Email";
        }
        return null;
      },
    );
  }

  TextFormField buildPasswordInput() {
    return TextFormField(
      decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
      color: Color.fromARGB(255, 0, 255, 13),),),
      labelText: "Password",
      ),
      controller: _password,
      validator: (value) {
        if (value!.isEmpty) {
          return "กรุณากรอก Password";
        }
        return null;
      },
      obscureText: true,
     
    );
  }

  Widget buildNameInput() {
    return TextFormField(
      decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
      color: Color.fromARGB(255, 0, 255, 13),),),
      labelText: "Name",
      ),
      controller: _name,
      
    );
  }

  Widget buildTelInput() {
    return TextFormField(
      decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
      color: Color.fromARGB(255, 0, 255, 13),),),
      labelText: "Tel",
      ),
      controller: _tel,
     
    );
  }

  Widget buildEmailSignUp() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: 
      EmailAuthButton(
        text: "Sing Up",
        onPressed: () {
          AuthService()
              .signUpWithEmail(
                  _email.text, _password.text, _name.text, _tel.text)
              .then((value) => Navigator.pop(context));
        },
      ),
    );
  }

      buildGenderSignUp()  {
        return Row(
          children: [ 
          Text("Gender", 
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
                  ),),
          RadioListTile(
                title: Text("ชาย"),
                value: "ชาย",
                groupValue: status,
                onChanged: (value) {
                  setState(() {
                    status = value.toString();
                  });
                },
              ),
          RadioListTile(
                title: Text("หญิง"),
                value: "หญิง",
                groupValue: status,
                onChanged: (value) {
                  setState(() {
                    status = value.toString();
            });
          },
        )
        ], );
      }  

}
