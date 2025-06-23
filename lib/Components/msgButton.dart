import 'package:flutter/material.dart';
import 'package:fusion2/messages.dart';

class msgButton extends StatelessWidget {
  const msgButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
          foregroundColor: Color.fromRGBO(114, 176, 29, 1),
          backgroundColor: Color.fromRGBO(63, 125, 32, 1),
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
        );
  }
}