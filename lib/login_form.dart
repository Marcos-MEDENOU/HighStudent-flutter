import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hello_world/delayed_animation.dart';
import 'package:hello_world/main.dart';


class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>{
  
  var _obscuretext = true;

  @override

  Widget build (BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 3500, 
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                )
              ),
            )
          ),

          SizedBox(height: 30),

          DelayedAnimation(
            delay: 4500, 
            child: TextField(
              obscureText: _obscuretext,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                labelText: "PASSWORD",
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscuretext= !_obscuretext;
                    });
                  },
                )
              ),
            )
            )
        ],
      ),
    );
  }
}