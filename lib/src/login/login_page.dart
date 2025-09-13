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
    );
  }

  void _handleClickLogin() {
    print("Username: ${_usernameContorller.text}");
    print("Password: ${_passwordContorller.text}");
    print("Username: ${_usernameContorller.text} Password: ${_passwordContorller.text}");
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
      ElevatedButton(onPressed: _handleClickLogin,
      child: Text("Login"),
      ),
      SizedBox(height: 15,),
      OutlinedButton(onPressed: _handleClickReset,
      child: Text("Reset"),
      )
    ];
  }
}
