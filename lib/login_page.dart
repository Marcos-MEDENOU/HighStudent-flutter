import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hello_world/delayed_animation.dart';
import 'package:hello_world/main.dart';

import 'login_form.dart';

class LoginPage extends StatelessWidget {
  
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
           //ajout de const ici
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size:30,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //ajout de const ici
              margin: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                    delay: 1500, 
                    child: Text(
                      "Email de connexion",
                      style:GoogleFonts.poppins(
                        color:d_red,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                  ),
                  SizedBox(height: 22),

                  DelayedAnimation(
                    delay: 1500, 
                    child: Text(
                      "Utlisez une addresse mail qui protege vos données contre toute attaques",
                      style:GoogleFonts.poppins(
                        color:Colors.grey[600],
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            LoginForm(),
            SizedBox(height: 125),

            DelayedAnimation(
              delay: 5500, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: d_red,
                  padding: const EdgeInsets.symmetric(
                    horizontal:125,
                    vertical: 13,
                  ),
                ),

                child: Text(
                  'CONFIRM',
                  style: GoogleFonts.poppins(
                    color:Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                      )
                  );
                },

              )
              
            ),

            SizedBox(height: 90),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right:35),
                child: TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },

                  child: DelayedAnimation(
                    delay: 6500,
                    child: Text(
                      "SKIP",
                      style: GoogleFonts.poppins(
                        color:Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ) 
            )
          ],
        ),
      )
    );
  }
}