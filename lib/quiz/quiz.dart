import 'package:flutter/material.dart';
import 'package:jeuxsms1/view/View.dart';
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[Container(child: new DecoratedBox(
        decoration: new BoxDecoration(
        image: new DecorationImage(
        image: new AssetImage("assets/bg.jpg"),
        fit: BoxFit.fill,
      ),
    ),
    ),
        ),
            new Column(
              children: <Widget>[
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 50, left: 30
                    ),
                    child: Image(
                      image: AssetImage("assets/LOGO My services_2.png"),
                    ),
                    width: 300,
                    height: 120,
                  ),
                  onTap: ()=>{Navigator.push(context,  MaterialPageRoute(builder:(context)=> View()))},
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 50, left: 30,right: 30
                    ),
                    child: Text('Bienvenue à Cash ma youfech ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF424242)
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 32,
                      left: 32,
                    ),
                    child: Text('REPONDEZ AUX QUESTIONS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFE20074),
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
                      right: 32,
                      left: 32,
                    ),
                    child: Text('La Tunisie appartient au continent?',
                      style: TextStyle(

                          color: Colors.black87,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(padding: EdgeInsets.only(top: 25.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(right: 5.0)),
                    FlatButton(
                      onPressed: null,
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(

                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFFFCE4EC),
                              Color(0xFFF8BBD0)
                            ],
                          ),

                        ),
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Text('Asiatique'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold

                            ),
                          ),



                        ),
                      ),
                    ),
                    FlatButton(

                      onPressed: null,
                      child: Container(
                        decoration: const BoxDecoration(

                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFFF50057),
                              Color(0xFFFF4081)
                            ],
                          ),

                        ),
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Text('Africain'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold

                            ),
                          ),



                        ),
                      ),
                    ),

                  ],
                ),
                FlatButton(
                  onPressed: null,
                  padding: EdgeInsets.all(10.0),
                  child: Text('Suivant', style: TextStyle(color: Colors.pink),),

                ),
                Spacer(),

              ],
            )
          ],
        ),
      );


  }
}
