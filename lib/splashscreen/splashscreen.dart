import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jeuxsms1/connexion/connexion.dart';



class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.push((context), MaterialPageRoute(builder: (context) => Connexion())),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(child: new DecoratedBox(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/bg.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Image.asset("assets/LOGO My services_2.png"),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("Loading",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              )
            ],

          )

        ],

      ),


    );
  }
}

