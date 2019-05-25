import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Emission extends StatefulWidget {
  @override
  _EmissionState createState() => _EmissionState();
}

class _EmissionState extends State<Emission> {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Image.asset("assets/LOGO My services_2.png"),
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
                    child: Text('Bienvenue à Service Emission',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF222A35),
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Image.asset("assets/emission.jpg"),
                  ),
                ),
                Spacer(),
                FlatButton(

                  onPressed: () =>Navigator.push((context), MaterialPageRoute(builder: (context) => _textMe())),
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

          ),
        ],
      ),




    );
  }
}

_textMe() async {
  const uri = 'sms:85654?body=D';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {

    throw 'Could not launch $uri';
  }

}