import 'package:flutter/material.dart';
import 'package:fusion2/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.night,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Intro Text
          Text("WELCOME TO", style: GoogleFonts.oswald(color: AppColors.text, fontSize: 25),),
          Text("FUSION 2", style: GoogleFonts.oswald(color: AppColors.text, fontSize: 25),),

          // Padding
          SizedBox(height: 50,),
          
          // User name
          Container(width: 250, height: 80 ,child: TextField(style: TextStyle(fontSize: 12), decoration: InputDecoration(hintText: "First Name", filled: true, fillColor: AppColors.text),),),
          Container(width: 250, height: 80 ,child: TextField(style: TextStyle(fontSize: 12), decoration: InputDecoration(hintText: "Last Name", filled: true, fillColor: AppColors.text),),),

          // User contact info (email and phone number)
          Container(width: 250, height: 80 ,child: TextField(style: TextStyle(fontSize: 12), decoration: InputDecoration(hintText: "Enter your email", filled: true, fillColor: AppColors.text),),),
          Container(width: 250, height: 80 ,child: TextField(style: TextStyle(fontSize: 12), decoration: InputDecoration(hintText: "Password", filled: true, fillColor: AppColors.text),),),


          // DOB


          // Sign up button -> Should pop back to the login screen after creating an account
          ElevatedButton.icon(onPressed: (){}, label: Text("Sign Up"), icon: Icon(Icons.arrow_forward_rounded), iconAlignment: IconAlignment.end, style: ElevatedButton.styleFrom(foregroundColor: AppColors.charcoal),),

          
          
        ],
      ),
      )
    );
  }
}