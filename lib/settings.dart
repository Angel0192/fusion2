import 'package:flutter/material.dart';
import 'package:fusion2/Components/NavBar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: const Icon(Icons.messenger)),
      body: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: Center(child: Column(
          children: [
            
          ],),
          ))
    );
  }
}