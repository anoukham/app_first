import 'package:app_first/src/page/pages/rooutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _usernameContorller = TextEditingController();  
  final _passwordContorller = TextEditingController();
  @override
  void initState() {
    _usernameContorller.text = "admin";
    _passwordContorller.text = "123";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"), 
      backgroundColor: Colors.lightBlueAccent,),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Card(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ..._builTextFields(),
                  SizedBox(height: 32,),
                  ..._builButtons()
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleClickLogin() {
  //   print("Username: ${_usernameContorller.text}");
  //   print("Password: ${_passwordContorller.text}");
  //   print("Username: ${_usernameContorller.text} Password: ${_passwordContorller.text}");
   Navigator.pushNamed(context, AppRooute.home);
   }


  void _handleClickReset() {
    _usernameContorller.text = "";
    _passwordContorller.text = "";
  }

  _builTextFields() {
    return [
      TextField(
      controller: _usernameContorller,
      decoration: InputDecoration(labelText: "Username"),
              ),
      TextField(
      controller: _passwordContorller,
      decoration: InputDecoration(labelText: "Password"),
              ),
    ];
  }
  
  _builButtons() {
    return [
      ElevatedButton(
      onPressed: _handleClickLogin,
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,   // สีพื้นหลัง
      foregroundColor: Colors.white,  // สีข้อความ "Login"
        ),
      child: Text("Sigin"),
        ),
      SizedBox(height: 15,),
      OutlinedButton(onPressed: _handleClickRegister,
      child: Text("Register"),  ),

      SizedBox(height: 15,),
      OutlinedButton(onPressed: _handleClickReset,
      child: Text("Reset"),
      )
    ];
  }

  void _handleClickRegister() {
    Navigator.pushNamed(context, AppRooute.register);
  }
}
