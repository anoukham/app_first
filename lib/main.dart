import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aek ja ao jing la na',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 184, 6, 6),
        ),
      ),
      home: const MyHomePage(title: 'JUT PAI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(color: Colors.blue),
            child: const Text(
              'aek',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(color: Colors.green),
            child: const Text(
              'aekk',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(color: Colors.orange),
            child: const Text(
              'aekkk',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
