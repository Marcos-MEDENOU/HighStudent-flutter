import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'welcome_page.dart';

// ignore: constant_identifier_names
const d_red = Color(0xFFE9717D);
void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override

  Widget build (BuildContext context){

    return MaterialApp(


      debugShowCheckedModeBanner: false,

      title: 'HighStudent',

      home: WelcomePage(),

    );
  } 
}

