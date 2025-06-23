import 'package:flutter/material.dart';
import 'package:fusion2/Components/NavBar.dart';
import 'package:fusion2/Components/msgButton.dart';
import 'package:fusion2/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.night,
      appBar: NavBar(),
      floatingActionButton: msgButton(),
      body: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: Center(child: Column(
          children: [
            CircleAvatar()
          ],),
          ))
    );
  }
}