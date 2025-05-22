import 'package:flutter/material.dart';
import 'package:fusion2/profile.dart';
import 'package:fusion2/settings.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget{
  const NavBar({super.key});
  
  Size get preferredSize => Size.fromHeight(60); // same here

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 8,
        shadowColor: Colors.black54,
        title: TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Fusion 2")),
        centerTitle: true,
        leading:  const Padding(padding: EdgeInsets.all(8.0), child: SizedBox(child: Text("Logo here"),),),
        actions: [
          IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));}, icon: const Icon(Icons.person)),
          const SizedBox(width: 10,),
          IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));}, icon: const Icon(Icons.settings))
        ],
    );
  }
}