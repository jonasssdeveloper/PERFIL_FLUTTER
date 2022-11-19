import 'package:url_launcher/url_launcher.dart';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileCuatro extends StatelessWidget{
  const ProfileCuatro({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Page1()
        ],

      )
    );
  }
}

class Page1 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        
        Background(),

        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);
    
    return SafeArea(
      bottom: false,
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        
       children: [
        Container(
                alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.only(top: 50.0, left: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
        
        SizedBox(height: 30),
        Text('Biografia', style: textStyle ),
     Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.0),
                Text(
                     'Mi nombre es Jonathan Calle Condori, mis papas son Javier Freddy Calle M. y mi madre es Gladys Blanca Condori Llanque.Naci en la ciudad de La Paz un 8 de diciembre de 1995, pesando 5 kilos. Seguramente a mi mama le costo mucho tenerme. Asisti al colegio Antonio Diaz Villamil, preste el servicio militar  en el departamento del Beni. Vivi en el pais de Brasil 5 años por razones de trabajo y estudio. Actualemente estudio en la UniFranz en la ciudad de Santa Cruz. Tengo muchos sueños que cumplir y metas que alcanzar doy gracias a la vida por ser tan buena conmigo',
                    style: TextStyle(
                        color: Color.fromARGB(255, 230, 222, 222),
                        fontWeight: FontWeight.w200,
                        fontSize: 13.0)),
              ],
            ),
          ),

        
        Expanded(child: Container()),
        //Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        
       ], 
      ),
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage("assets/images/2aje.jpg"),));
  }
}