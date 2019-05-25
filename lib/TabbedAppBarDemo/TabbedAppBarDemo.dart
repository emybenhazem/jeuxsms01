import 'package:flutter/material.dart';
class TabbedAppBarDemo extends StatefulWidget {
  @override
  _TabbedAppBarDemoState createState() => _TabbedAppBarDemoState();
}

class _TabbedAppBarDemoState extends State<TabbedAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
class Choice{
  final String title;
  final IconData icon;
  const Choice ({this.title,this.icon});
}
const List<Choice> choices = <Choice>[
  Choice(title: 'Etapes'),
  Choice(title: 'Ingrédient'),
  Choice(title: 'Valeur nutritive'),
  Choice(title: 'Video'),
];

