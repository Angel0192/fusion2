import 'package:flutter/material.dart';
import 'package:fusion2/Components/NavBar.dart';
import 'package:fusion2/Components/msgButton.dart';
import 'package:fusion2/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.night,
      appBar: NavBar(),
      floatingActionButton: msgButton(),
      body: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: Column(
          children: [
            Text("SETTINGS", style: GoogleFonts.oswald(color: AppColors.text, fontSize: 25)),

            Expanded(child: Column(
              children: [
              ],
            ))
          ],
        )
        ),
    );
  }
}