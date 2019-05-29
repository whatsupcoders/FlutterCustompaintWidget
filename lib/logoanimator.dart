import 'package:flutter/material.dart';
import 'logopainter.dart';
import 'logopainterlandscape.dart';

class LogoAnimator extends StatefulWidget {
  LogoAnimator({Key key}) : super(key: key);

  _LogoAnimatorState createState() => _LogoAnimatorState();
}

class _LogoAnimatorState extends State<LogoAnimator>
    with SingleTickerProviderStateMixin {
  double _lineOnefraction = 0.0;
  double _lineTwofraction = 0.0;
  double _blueCirclefraction = 0.0;
  double _greenBarfraction = 0.0;
  Animation<double> lineOneanimation,
      lineTwoanimation,
      blueCircleAnimation,
      greenBarAnimation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);

    lineOneanimation = Tween(begin: 200.0, end: 250.0).animate(controller)
      ..addListener(() {
        setState(() {
          _lineOnefraction = lineOneanimation.value;
        });
      });

    lineTwoanimation = Tween(begin: 300.0, end: 350.0).animate(controller)
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
    return CustomPaint(
      painter: LogoPainter(_lineOnefraction, _lineTwofraction,
          _blueCirclefraction, _greenBarfraction),
    );
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }
}
