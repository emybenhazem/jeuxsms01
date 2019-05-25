import 'package:flutter/material.dart';
class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(child: new DecoratedBox(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/bg.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Expanded(
                flex: 2,
                child: Container(
                  child: Image.asset("assets/LOGO My services_2.png"),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(' Bienvenue à ' ,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF222A35),
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: null,
                    padding: EdgeInsets.all(15.0),
                    child: Text('Dbara', style: TextStyle(color: const Color(0xFFE20074),
                        fontSize: 20),),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 30
                  ),
                  child: Text('Cherchez une recette ',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color(0xFFE20074),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.3,
                    height: 50,
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.only(
                        top: 1, left: 16, bottom: 1
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'chercher'
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: null,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: const Color(0xFFE20074),
                      ),
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text('OK'.toUpperCase(),
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
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top:100.0),),
                    Center(
                      child: Container(
                        height: 150,
                        child: Card(
                          elevation: 10.0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30.0, bottom: 30.0,right: 0.0,left: 0.0 ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/pizza.jpg'),
                                radius: 40.0,
                              ),
                              title: Text('Pizza Végétarienne'),
                              subtitle: Text('Vous vous imaginez déjà au coin du feu, l’hiver, avec votre plaid tout doux et votre bol de soupe encore fumant ? '),
                            ),
                          ),
                        ),

                      ),
                    ),
                    Center(
                      child: Container(
                        height: 150,
                        child: Card(
                          elevation: 10.0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 30.0, bottom: 30.0,right: 0.0,left: 0.0 ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/poulet.jpeg'),
                                radius: 40.0,
                              ),
                              title: Text('Poulet'),
                              subtitle: Text('La sélection des reproducteurs et le développement de nouveaux types'),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ],

          ),
        ],
      ),
    );
  }
}
