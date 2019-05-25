import 'package:flutter/material.dart';
import 'package:jeuxsms1/acceuil/acceuil.dart';

import 'package:jeuxsms1/inscription/inscription.dart';


class Connexion extends StatefulWidget {

  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width /4.0,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.0,

              decoration: BoxDecoration(
                  color: const Color(0xFF222A35),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Image.asset("assets/LOGO My services_1.png"),
                    ),

                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(

                        right: 32,
                        left: 32,
                      ),
                      child: Text('Bienvenue à My services',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFF0F0F5),
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(

                        right: 50,
                        left: 50,
                      ),
                      child: Text("L'application qui regroupe tous vos services",
                        style: TextStyle(
                            color: const Color(0xFFF0F0F5),
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 32,
                        right: 32,
                        left: 32,
                      ),
                      child: Text("pour S'inscrire ,envoyer " ,
                        style: TextStyle(
                            color: const Color(0xFFF0F0F5),
                            fontSize: 20
                        ),

                      ),

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 32,


                          ),
                          child: Text(' MS ' ,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFE20074),
                                fontSize: 30
                            ),

                          ),

                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 32,

                          ),
                          child: Text('  au ' ,
                            style: TextStyle(
                                color: const Color(0xFFF0F0F5),
                                fontSize: 20
                            ),

                          ),

                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 32,
                          ),
                          child: Text('  85000' ,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFE20074),
                                fontSize: 30
                            ),

                          ),

                        ),
                      ),

                    ],

                  )



                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30, left: 50
                ),
                child: Text('Connectez Vous :',
                  style: TextStyle(
                    fontSize: 20,
                      fontWeight: FontWeight.bold,
                    color: const Color(0xFFE20074),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: EdgeInsets.only(
                  top: 50
              ),
              child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 1.2,
                      height: 50,
                      padding: EdgeInsets.only(
                          top: 4, left: 16, right: 16, bottom: 4
                      ),

                      child: TextField(
                        maxLength: 8,
                        keyboardType:TextInputType.numberWithOptions() ,
                        decoration: InputDecoration(

                            hintText: 'Numero de Telephone'
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 1.2,
                      height: 50,
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.only(
                          top: 4, left: 16, right: 16, bottom: 4
                      ),

                      child: TextField(
                        maxLength: 4,
                        keyboardType:TextInputType.numberWithOptions() ,
                        decoration: InputDecoration(

                            hintText: 'Code'
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 25.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Padding(padding: EdgeInsets.only(top: 30, left: 10, )),
                        FlatButton(
                          onPressed: () =>Navigator.push((context), MaterialPageRoute(builder: (context) => Inscription())),
                          padding: EdgeInsets.all(15.0),
                          child: Text('Code oublié?', style: TextStyle(color: const Color(0xFFE20074),),),
                        ),
                        FlatButton(

                          onPressed: () =>Navigator.push((context), MaterialPageRoute(builder: (context) =>Acceuil())),
                          child: Container(
                            decoration: const BoxDecoration(

                              color: const Color(0xFFE20074),

                            ),
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Text('Connexion'.toUpperCase(),
                                style: TextStyle(
                                    color: const Color(0xFFF0F0F5),
                                    fontWeight: FontWeight.bold

                                ),
                              ),



                            ),
                          ),
                        ),
                      ],
                    ),


                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
