
import 'package:app_first/src/login/login_page.dart';
import 'package:flutter/material.dart';

class CMApp extends StatelessWidget {
  const CMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "CMApp", home: LoginPage(),);
  }
}