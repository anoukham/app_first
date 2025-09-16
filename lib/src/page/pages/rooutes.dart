import 'package:app_first/src/page/pages/home/home_page.dart';
import 'package:app_first/src/page/pages/login/login_page.dart';
import 'package:app_first/src/page/register/register_page.dart';
import 'package:flutter/material.dart';

class AppRooute {
  static const home = 'home';
  static const login = 'login';
  static const register = 'register';

  static get all => <String, WidgetBuilder>{
    login: (context) => const LoginPage(),
    home: (context) => const HoomePage(),
    register: (context) => const RegisterPage()
  };
}