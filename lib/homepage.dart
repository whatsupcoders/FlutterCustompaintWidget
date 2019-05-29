import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'logoanimator.dart';
import 'logoanimatorlandscape.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.paintRoller),
            onPressed: () {
              //
            }),
        title: Container(
          alignment: Alignment.center,
          child: Text("Google I/O 2019", style: TextStyle()),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.paintBrush,
              size: 20.0,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: _layoutDetails(),
      
    );
  }
    
  Widget _layoutDetails(){
    Orientation orientation= MediaQuery.of(context).orientation;
    if(orientation== Orientation.portrait){
      return LogoAnimator();
    }
    else{
      return LogoAnimatorLandscape();
    }
  }
 
  
}

