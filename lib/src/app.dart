
import 'package:app_first/src/bloc/login_bloc.dart';
import 'package:app_first/src/page/pages/login/login_page.dart';
import 'package:app_first/src/page/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CMApp extends StatelessWidget {
  const CMApp({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider(create: (context) => LoginBloc());
    return MultiBlocProvider(
      providers: [loginBloc],
      child: MaterialApp(title: "CMApp",
      routes: AppRoute.all, 
      home: LoginPage(),),
    );
  }
}