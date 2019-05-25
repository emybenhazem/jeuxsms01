import 'package:flutter/material.dart';

class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}
class _ViewState extends State<View> {
  List My__List;
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    My__List = [
      ["pizza","https://images.unsplash.com/photo-1460306855393-0410f61241c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" ,"description how has many line", "30min", "400 Kcal", "facile"],
      ["poulet","https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?cs=srgb&dl=burger-chips-dinner-70497.jpg&fm=jpg" ,"description how has many line", "45min", "400 Kcal", "facile"],
      ["coscus","https://images.unsplash.com/photo-1460306855393-0410f61241c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" ,"description how has many line", "30min", "400 Kcal", "facile"],
      ["pizza","https://images.unsplash.com/photo-1460306855393-0410f61241c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" ,"description how has many line", "30min", "400 Kcal", "facile"],
      ["pizza","https://images.unsplash.com/photo-1460306855393-0410f61241c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" ,"description how has many line", "30min", "400 Kcal", "facile"],
      ["pizza", "https://images.unsplash.com/photo-1460306855393-0410f61241c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" ,"description how has many line", "30min", "400 Kcal", "facile"],
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 30
                ),
                child: Text('Cherchez une recette ',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xFFE20074),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
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

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: My__List.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Card(
                        elevation: 3,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Image(

                                image: NetworkImage(My__List[index][1]),
                                fit: BoxFit.fill,
                              ),
                              height: 150,
                              width: 300,
                            ),
                            Text(My__List[index][0], style: TextStyle(color: const Color(0xFFE20074), fontSize: 18),),
                            Text(My__List[index][2]),
                            Spacer(),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: <Widget>[
                                  Container(

                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.timer, color: const Color(0xFFE20074),),
                                        Text(My__List[index][3], style: TextStyle(color: const Color(0xFFE20074),),)
                                      ],

                                    ),
                                    color: const Color(0xFFF0F0F5),
                                  ),
                    Container(
                      child: Row(
                      children: <Widget>[
                      Icon(Icons.whatshot, color: const Color(0xFFE20074),),
                      Text(My__List[index][4],  style: TextStyle(color: const Color(0xFFE20074),),)
                      ],
                      ),

                      color: const Color(0xFFF0F0F5),
                    ),
                   
                    Container(
                      child: Row(
                      children: <Widget>[
                      Icon(Icons.signal_cellular_4_bar, color: const Color(0xFFE20074),),
                      Text(My__List[index][5], style: TextStyle(color: const Color(0xFFE20074),),)
                      ],
                      ),
                      color: const Color(0xFFF0F0F5),
                    ),

                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    );
                  }
              ),
            )
          ],
        ));
  }
}