import 'package:flutter/material.dart';
import 'package:fusion2/constants.dart';
import 'package:google_fonts/google_fonts.dart';


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
          Text("WELCOME TO", style: GoogleFonts.oswald(color: AppColors.text, fontSize: 25),),
          Text("FUSION 2", style: GoogleFonts.oswald(color: AppColors.text, fontSize: 25),),

          TextField(),
          TextField(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("New Here? Sign Up -"),
              TextButton(onPressed: (){}, child: Text("Click Here"))
            ],
          )
        ],
      ),
      )
    );
  }
}