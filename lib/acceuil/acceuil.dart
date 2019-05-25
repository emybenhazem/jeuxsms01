import 'package:flutter/material.dart';

import 'package:jeuxsms1/quiz/quiz.dart';
import 'package:jeuxsms1/view/View.dart';
class Acceuil extends StatefulWidget {
  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: ExactAssetImage('assets/bg.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          new Column(
            children: <Widget>[
              InkWell(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 40, left: 30
                  ),
                  child: Image(
                    image: AssetImage("assets/LOGO My services_2.png"),
                  ),
                  width: 150,
                  height: 100,
                ),
                onTap: ()=>{Navigator.push(context,  MaterialPageRoute(builder:(context)=> View()))},
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 40, left: 30,right: 30
                  ),
                  child: Text('Bienvenu 55 00 00 00 ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                        color: const Color(0xFF424242)
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 40, left: 30,right: 30
                  ),
                  child: Text('My services regroupe tous les services au qu''elles vous êtes inscrit ',
                    style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF424242)
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0,40.0,20.0,40.0),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        width:400.0,
                        height: 300.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF424242)),
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(image: AssetImage('assets/bg-dbara.jpg'),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Positioned(
                        top: 280.0,
                        left: 15.0,
                        right: 15.0,
                        child: Container(
                          width: 290.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xFF222A35),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1.0,
                                  color: const Color(0xFF222A35),
                                  spreadRadius: 2.0,
                                ),
                              ]
                          ),
                          child: Container(
                            padding: EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text('Dbara',
                                      style: TextStyle(
                                        color: const Color(0xFFF0F0F5),
                                        fontFamily: 'Montserrat',
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(width: 60.0,),
                                    Text('Recettes de cuisine',
                                      style: TextStyle(
                                        color: const Color(0xFFE20074),
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 9.0),
                                new RaisedButton(
                                  color: const Color(0xFFE20074),
                                  child: const Text('Continuer'),
                                  shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(30.0)),
                                  textColor: Colors.white,
                                  onPressed: () => Navigator.push((context), MaterialPageRoute(builder: (context) => QuizPage())),

                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Container(
                padding: EdgeInsets.fromLTRB(20.0,40.0,20.0,40.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      width:400.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF424242)),
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(image: AssetImage('assets/bg-cashmayoufech.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    Positioned(
                      top: 280.0,
                      left: 15.0,
                      right: 15.0,
                      child: Container(
                        width: 290.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xFF222A35),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1.0,
                                color: const Color(0xFF222A35),
                                spreadRadius: 2.0,
                              ),
                            ]
                        ),
                        child: Container(
                          padding: EdgeInsets.all(7.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Cash ma youfech',
                                    style: TextStyle(
                                      color: const Color(0xFFF0F0F5),
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(width: 60.0,),
                                  Text('Quiz',
                                    style: TextStyle(
                                      color: const Color(0xFFE20074),
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.0),
                              FlatButton(
                                color: const Color(0xFFE20074),
                                child: const Text('Continuer'),
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(30.0)),
                                textColor: Colors.white,
                                onPressed: () =>Navigator.push((context), MaterialPageRoute(builder: (context) =>QuizPage())),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Container(
                padding: EdgeInsets.fromLTRB(20.0,40.0,20.0,40.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      width:400.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF424242)),
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(image: AssetImage('assets/emission.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    Positioned(
                      top: 280.0,
                      left: 15.0,
                      right: 15.0,
                      child: Container(
                        width: 290.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xFF222A35),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1.0,
                                color: const Color(0xFF222A35),
                                spreadRadius: 2.0,
                              ),
                            ]
                        ),
                        child: Container(
                          padding: EdgeInsets.all(7.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Abdelli show Time',
                                    style: TextStyle(
                                      color: const Color(0xFFF0F0F5),
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(width: 60.0,),
                                  Text('emission',
                                    style: TextStyle(
                                      color: const Color(0xFFE20074),
                                      fontFamily: 'Montserrat',
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.0),
                              FlatButton(
                                color: const Color(0xFFE20074),
                                child: const Text('Continuer'),
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(30.0)),
                                textColor: Colors.white,
                                onPressed: () => Navigator.push((context), MaterialPageRoute(builder: (context) => QuizPage())),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

              ),
              Padding(padding: EdgeInsets.only(top: 50.0)),


            ],


          ),



        ],

      ),
    );
  }
}
