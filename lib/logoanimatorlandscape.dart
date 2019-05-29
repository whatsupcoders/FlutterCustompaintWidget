import 'package:flutter/material.dart';
import 'logopainterlandscape.dart';

class LogoAnimatorLandscape extends StatefulWidget {
  LogoAnimatorLandscape({Key key}) : super(key: key);

  _LogoAnimatorLandscapeState createState() => _LogoAnimatorLandscapeState();
}

class _LogoAnimatorLandscapeState extends State<LogoAnimatorLandscape> with SingleTickerProviderStateMixin
    {
  double _lineOnefraction = 0.0;
  double _lineTwofraction = 0.0;
  double _blueCirclefraction = 0.0;
  double _greenBarfraction = 0.0;
  
  Animation<double>  lineOneanimation,
      lineTwoanimation,
      blueCircleAnimation,
      greenBarAnimation;
  AnimationController controller;

  @override
  void initState() {
       super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);

    lineOneanimation = Tween(begin: 100.0, end: 150.0).animate(controller)
      ..addListener(() {
        setState(() {
          _lineOnefraction = lineOneanimation.value;
        });
      });

    lineTwoanimation = Tween(begin: 200.0, end: 250.0).animate(controller)
      ..addListener(() {
        setState(() {
          _lineTwofraction = lineTwoanimation.value;
        });
      });
       blueCircleAnimation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          _blueCirclefraction = blueCircleAnimation.value;
        });
      });
    greenBarAnimation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          _greenBarfraction = greenBarAnimation.value;
        });
      });
      controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:80.0),
      child:CustomPaint(
        painter:LogoPainterLandscape(_lineOnefraction,_lineTwofraction,_blueCirclefraction,_greenBarfraction),
      )
      
      );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  
}