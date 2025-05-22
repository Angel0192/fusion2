import 'package:flutter/material.dart';
import 'package:fusion2/Components/NavBar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: const Icon(Icons.messenger)),
      body: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: Center(child: Column(
          children: [
            Text("Yo Gurt", style: GoogleFonts.abhayaLibre(fontSize: 36),),
            
          ],),
          ))
    );
  }
}