import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
class Inscription extends StatefulWidget {

  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  int _counter;
  final TextEditingController number=new TextEditingController();
  final TextEditingController message=new TextEditingController();
  void_incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  Future callservice() async{
    String url="https://smsc.jmt.tn/sendSMS.php?SRVID=348&PRID=99&SC=198&MOBILE=55490846&OPID=6050X&MESSAGE=jet&ENCODE=0&LOGIN=jet&PASS=jet_stagaire_2019";
    print(url);
    http.Response res=await http.get(Uri.encodeFull(url),
    headers: {
      "Accept":"Application/json"
    }
    );
    print(json.decode(res.body));

  }


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
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFFCCBC),
                      Color(0xFFFF7045)
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.person,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 32,
                        right: 32,
                      ),
                      child: Text('Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Text('Saisissez votre numéro de Telephone ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)

                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8
                            )
                          ]
                      ),
                      child: TextField(
                        maxLength: 8,
                        keyboardType:TextInputType.numberWithOptions() ,
                        decoration: InputDecoration(
                            icon: Icon(Icons.phone,
                              color: Colors.grey,
                            ),
                            hintText: 'Numero de Telephone'
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 16,right: 32,
                        ),
                        child: Text('forgot Code ?',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    Spacer(),

                    FlatButton(
                      onPressed: callservice,

                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFFFFCCBC),
                                Color(0xFFFF7045)
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)
                            )
                        ),
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Text('S''INSCRIRE'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
