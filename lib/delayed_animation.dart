import 'dart:async'; // definir un delai d'animation avec la class Timer()
import 'package:flutter/material.dart'; //donne acces aux classes indispensables de flutter notamment les widgets de base




class DelayedAnimation extends StatefulWidget{
  final Widget child; 
  final int delay;
  const DelayedAnimation({required this.delay, required this.child});

  @override
  _DelayedAnimationState createState() =>_DelayedAnimationState();
}

class _DelayedAnimationState extends State<DelayedAnimation>
  with SingleTickerProviderStateMixin{
    /**
     * Des variables pour controler notre animation 
     */
    late AnimationController _controller;
    late Animation<Offset> _animOffset;

    @override

    void initState(){
      super.initState();
    

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    final curve = CurvedAnimation(
      parent: _controller, 
      curve: Curves.decelerate,
      );

    _animOffset = Tween<Offset>(
      begin: Offset(0.0, -0.35),
      end : Offset.zero, ).animate(curve);

  Timer(Duration(microseconds: widget.delay), (){
    _controller.forward();
  });
    }

    @override
    Widget build (BuildContext context){
      return FadeTransition(
        opacity: _controller,
        child:SlideTransition(
          position: _animOffset,
          child: widget.child,
        ),
      );
    }
  }