import 'package:flutter/material.dart';
import 'package:fusion2/login.dart';

void main(){
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Fusion Dos",
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}