import 'package:flutter/material.dart';

class Msgrow extends StatelessWidget {
  const Msgrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        SizedBox(child: CircleAvatar(),width: 50, height: 50,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Message content")
            ],
          ),
        ),

        SizedBox(width: 300,),

        Text("x minutes ago")

      ],
    );
  }
}