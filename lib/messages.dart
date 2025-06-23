import 'package:flutter/material.dart';
import 'package:fusion2/Components/msgRow.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.transparent,
        child: Center(
          child: SizedBox(
            width: 600,
            height: 400,
            child: Card(
              elevation: 20,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Messages", style: TextStyle(fontWeight: FontWeight.bold),),
                            IconButton(onPressed: () {
                          Navigator.pop(context);
                        }, icon: Icon(Icons.cancel),)
                          ],
                        ),
            
                        ListBody(children: [
                          Msgrow(),
                          Divider(),
                          Msgrow(),
                          Msgrow(),
                          Divider(),
                          Msgrow(),
                          Msgrow(),
                          Divider(),
                          Msgrow()
                        ],)
                        
                        
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
