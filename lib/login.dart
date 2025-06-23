import 'package:flutter/material.dart';
import 'package:fusion2/constants.dart';
import 'package:fusion2/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';


class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.night,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("WELCOME BACK TO", style: GoogleFonts.oswald(color: AppColors.text, fontSize: 25),),
          Text("FUSION 2", style: GoogleFonts.oswald(color: AppColors.text, fontSize: 30),),

          SizedBox(height: 50,),

          Container(width: 250, height: 80 ,child: TextField(style: TextStyle(fontSize: 12), decoration: InputDecoration(hintText: "Enter your email", filled: true, fillColor: AppColors.text),),),
          Container(width: 250, height: 80 ,child: TextField(style: TextStyle(fontSize: 12), decoration: InputDecoration(hintText: "Password", filled: true, fillColor: AppColors.text),),),

          ElevatedButton.icon(onPressed: (){}, label: Text("Login"), icon: Icon(Icons.arrow_forward_rounded), iconAlignment: IconAlignment.end, style: ElevatedButton.styleFrom(foregroundColor: AppColors.charcoal),),

          SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("New Here? Sign Up -", style: GoogleFonts.oswald(color: AppColors.text)),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => signupPage()));
              }, child: Text("Click Here", style: GoogleFonts.oswald()))
            ],
          )
        ],
      ),
      )
    );
  }
}