
import 'package:app_first/src/page/pages/login/login_page.dart';
import 'package:app_first/src/page/pages/rooutes.dart';
import 'package:flutter/material.dart';

class CMApp extends StatelessWidget {
  const CMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "CMApp",
    routes: AppRooute.all, 
    home: LoginPage(),);
  }
}