import 'package:flutter/material.dart';
import 'package:jeuxsms1/splashscreen/splashscreen.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(primaryColor: Colors.pinkAccent,accentColor: Colors.pink),
    home:SplashScreen(),
   );
  }

}
