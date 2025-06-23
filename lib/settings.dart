import 'package:flutter/material.dart';
import 'package:fusion2/Components/NavBar.dart';
import 'package:fusion2/messages.dart';

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
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                opaque: false, // keep false if MessagePage has transparency
                transitionDuration: const Duration(milliseconds: 400),
                pageBuilder: (_, __, ___) => const MessagePage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  final curvedAnimation = CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeIn,
                  );

                  return ScaleTransition(
                    scale: curvedAnimation,
                    child: child,
                  );
                },
              ),
            );
          },
          label: const Icon(Icons.messenger),
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: Center(child: Column(
          children: [
            Text("Settings")
          ],),
          ))
    );
  }
}