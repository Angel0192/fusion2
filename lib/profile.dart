import 'package:flutter/material.dart';
import 'package:fusion2/Components/NavBar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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