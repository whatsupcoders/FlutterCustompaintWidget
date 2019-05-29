import 'package:flutter/material.dart';
import 'dart:math';

class LogoPainterLandscape extends CustomPainter {
  Paint _paint;
  double _lineOnefraction, _lineTwofraction, _blueCirclefraction,_greenBarfraction;

  LogoPainterLandscape(
      this._lineOnefraction, this._lineTwofraction, this._blueCirclefraction,this._greenBarfraction) {
    _paint = Paint()
      ..color = Color(0xffaecbf7)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;
  }
  @override
  void paint(Canvas canvas, Size size) {
       canvas.drawLine(
      Offset(25.0, 100.0),
      Offset(25.0, 300.0),
      _paint,
    );
    canvas.drawLine(
      Offset(100.0, 100.0),
      Offset(100.0, 300.0),
      _paint,
    );
    canvas.drawLine(
      Offset(1.0, _lineOnefraction),
      Offset(120.0, _lineOnefraction),
      _paint,
    );
    canvas.drawLine(
      Offset(1.0, _lineTwofraction),
      Offset(120.0, _lineTwofraction),
      _paint,
    );

    var rect = Rect.fromLTWH(140, 100.0, 80.0, _blueCirclefraction * 200.0);
    _paint.color = Color(0xffACCAF6);
    _paint.style = PaintingStyle.fill;
    canvas.drawRect(rect, _paint);

    _paint.color = Color(0xff4184f2);
    var topCircle = Offset(180.0, 60.0);
    _paint.style = PaintingStyle.fill;
    canvas.drawCircle(topCircle, _blueCirclefraction * 40.0, _paint);

    _paint.color = Color(0xffe5453f);
    _paint.style = PaintingStyle.fill;
    var circlerect = Offset(225, 150.0) & Size(130.0, 130.0);
    canvas.drawArc(
        circlerect, -pi / 3, pi * 3 * _blueCirclefraction, false, _paint);

    var yellowrect = Rect.fromLTWH(365, 100.0, 80.0, _blueCirclefraction*200.0);
    _paint.color = Color(0xffFCECC4);
    _paint.style = PaintingStyle.fill;
    canvas.drawRect(yellowrect, _paint);

    var path = Path();
    path.moveTo(445.0, 40.0);
    path.lineTo(390.0, 40.0);
    path.lineTo(360.0, 100.0);
    path.lineTo(445.0, 100.0);
    _paint.color = Color(0xfff9be52);
    _paint.style = PaintingStyle.fill;
    canvas.drawPath(path, _paint);

    _paint.color = Color(0xff3ea752);
    var greencenter = Offset(500,90.0);
    _paint.style=PaintingStyle.fill;
    canvas.drawCircle(greencenter, _blueCirclefraction*45.0, _paint);

    var greenpath = Path();
      greenpath.moveTo(_greenBarfraction*500.0,_greenBarfraction*35.0);
      greenpath.lineTo(_greenBarfraction*500.0,_greenBarfraction*300.0);
       greenpath.lineTo(_greenBarfraction*560.0,_greenBarfraction*300.0);
      greenpath.lineTo(_greenBarfraction*560.0,_greenBarfraction*60.0);
       _paint.color = Color(0xffcdead6);
      _paint.style=PaintingStyle.fill;
      canvas.drawPath(greenpath, _paint);
  }

  @override
  bool shouldRepaint(LogoPainterLandscape oldDelegate) {
    return oldDelegate._lineOnefraction != _lineOnefraction;
  }
}