import 'package:flutter/material.dart';
import 'package:fusion2/profile.dart';
import 'package:fusion2/settings.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget{
  const NavBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60); // same here

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 8,
        shadowColor: Colors.black54,
        title: Text("Fusion 2"),
        centerTitle: false,
        leading: GestureDetector(onTap: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        }, child: Image.asset("./assets/Media/NAVSEA_logo.jpeg", width: 150, height: 215,),),
        actions: [
          IconButton(
  onPressed: () {
    Navigator.push(
      context,
      PageRouteBuilder(
        opaque: false,
        transitionDuration: const Duration(milliseconds: 350),
        pageBuilder: (_, __, ___) => const ProfilePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curved = CurvedAnimation(
            parent: animation,
            curve: Curves.ease,
          );

          return FadeTransition(
            opacity: curved,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-0.1, 0.0),
                end: Offset.zero,
              ).animate(curved),
              child: child,
            ),
          );
        },
      ),
    );
  },
  icon: const Icon(Icons.person),
),
const SizedBox(width: 10),

IconButton(
  onPressed: () {
    Navigator.push(
      context,
      PageRouteBuilder(
        opaque: false,
        transitionDuration: const Duration(milliseconds: 350),
        pageBuilder: (_, __, ___) => const SettingsPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curved = CurvedAnimation(
            parent: animation,
            curve: Curves.linearToEaseOut,
          );

          return FadeTransition(
            opacity: curved,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-0.1, 0.0),
                end: Offset.zero,
              ).animate(curved),
              child: child,
            ),
          );
        },
      ),
    );
  },
  icon: const Icon(Icons.settings),
),

        ],
    );
  }
}