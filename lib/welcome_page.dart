/**
 * packages import
 */

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/main.dart';
import 'package:hello_world/delayed_animation.dart';
import 'package:hello_world/social_page.dart';

class WelcomePage extends StatelessWidget {
  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFEDEC),
      body: SingleChildScrollView(
        child: Container(
          //ajout de const
          margin: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              // DelayedAnimation(
              //   delay: 1500, 
              //   child: Container(
              //     height: 170,
              //     child: Image.asset('images/logo.png'),
              //   ) 
              // ),
              DelayedAnimation(
                delay: 2500, 
                child: Container(
                  height: 400,
                  child: Image.asset('images/logo2.png'),
                ) 
              ),
              DelayedAnimation(
                delay: 3500, 
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Text(
                    "Code and change your life 😎",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 4500, 
                child: Container(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      primary: d_red,
                      shape:StadiumBorder(),
                      padding: EdgeInsets.all(13)
                    ) ,

                    child: Text('GET STARTED'),
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context)=> SocialPage(),
                          ),
                      );
                    },
                  ),
                )
                )
            ],
          ),
        ),
      ),
    );
  }
}