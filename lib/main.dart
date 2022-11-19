
import 'package:flutter/material.dart';

//Pages
import 'package:perfil/src/pages/home_page.dart';
import 'package:perfil/src/pages/profile_cuatro.dart';
import 'package:perfil/src/pages/profile_dos.dart';
import 'package:perfil/src/pages/profile_tres.dart';
import 'package:perfil/src/pages/profile_uno.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: 'home',
     routes: <String, WidgetBuilder>{
       'home': (BuildContext context) => HomePage(),
       'profile1': (BuildContext context) => ProfileUno(),
       'profile2': (BuildContext context) => ProfileDos(),
       'profile3': (BuildContext context) => ProfileTres(),
       'profile4': (BuildContext context) => ProfileCuatro()
      },
      
    );
  }
}