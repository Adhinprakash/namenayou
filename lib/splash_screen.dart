import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:namenayou/home_page.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    _navigateTohome(context);
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Image.network("https://namenayou.com/static/media/namenayou_logo.fa117933fcffd17f0d51.png",height: 250,width: 200 ,),


            SizedBox(height: 50,),
            AnimatedTextKit(animatedTexts: [
              TyperAnimatedText(
                "www.namenayou.com",
                
               speed: Duration(milliseconds: 150),
                textStyle: GoogleFonts.abel(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.orange[800])
              )
            ])
          ],
        ),
      ),
    );
  }
  _navigateTohome(BuildContext context)async{
  await  Future.delayed(const Duration(seconds: 4)).then((value) =>   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomePage(),), (route) => false));
  
}
}
