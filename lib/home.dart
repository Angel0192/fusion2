import 'package:flutter/material.dart';
import 'package:fusion2/Components/NavBar.dart';
import 'package:fusion2/Components/msgButton.dart';
import 'package:fusion2/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.night,
        appBar: NavBar(),
        floatingActionButton: msgButton(),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 500,
                    height: 450,
                    child: Card.filled(
                    shadowColor: Colors.white38,
                    elevation: 5,
                    color: AppColors.charcoal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Testing out the waters", style: TextStyle(color: AppColors.text),)
                      ],),
                    )
                    ),
                  )
                ],
              ),
            ))
            );
  }
}
