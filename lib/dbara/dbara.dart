import 'package:flutter/material.dart';
class Dbara extends StatefulWidget {
  @override
  _DbaraState createState() => _DbaraState();
}

class _DbaraState extends State<Dbara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: ExactAssetImage('assets/bg.jpg'),
                fit: BoxFit.fill,
              ),
            ),

            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top:200.0),),
                  Center(
                    child: Container(
                      height: 200,
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
                      height: 200,
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
          ),
        ],
      ),
    );
  }
}

