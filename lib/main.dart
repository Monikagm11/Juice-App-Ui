import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:juiceapp/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: "Fruit App",
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
