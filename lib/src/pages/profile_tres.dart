import 'package:url_launcher/url_launcher.dart';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileTres extends StatelessWidget{
  const ProfileTres({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          
          Page1(),
          Page2()
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
        Text('MIS REDES SOCIALES', style: textStyle ),
        Text('Jonathan Calle Condori', style: textStyle,),
        Expanded(child: Container()),
        Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        
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
      child: Image(image: AssetImage("assets/images/1aje.jpg"),));
  }
}

class Page2 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      color: Color.fromARGB(255, 214, 48, 48),
      child: Center(
        
        child: ListView(
          padding: EdgeInsets.only(top: 60, left: 16, right: 16),
          children: [
            
            Container(
              
              child: TextButton(
          onPressed: (){
            launchUrlString("https://www.facebook.com/jhonn.stailok.5/");
          },
          child: Padding(
            padding: EdgeInsets.symmetric (horizontal:20),
            child: Container(child: Text('Facebook', style: TextStyle(color: Colors.white, fontSize: 30))),
          ), 
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          )
        ),
   
        ),
        SizedBox(height: 60.0),
         Container(
          
              child: TextButton(
          onPressed: (){
            launchUrlString("https://www.instagram.com/jonas.calle.14/");
          },
          child: Padding(
            padding: EdgeInsets.symmetric (horizontal:20),
            child: Container(child: Text('Instagram', style: TextStyle(color: Colors.white, fontSize: 30))),
          ), 
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 230, 143, 13),
            shape: StadiumBorder()
          )
        ),
        ),
        SizedBox(height: 60.0),
        Container(
              
              child: TextButton(
          onPressed: (){
            launchUrlString("https://www.tiktok.com/@raaamzes666");
          },
          child: Padding(
            padding: EdgeInsets.symmetric (horizontal:20),
            child: Container(child: Text('TikTtok', style: TextStyle(color: Colors.white, fontSize: 30))),
          ), 
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 214, 27, 199),
            shape: StadiumBorder()
          )
        ),
        
   
        ),
        SizedBox(height: 60.0),
         Container(
              
              child: TextButton(
          onPressed: (){
            launchUrlString("https://twitter.com/minosss5");
          },
          child: Padding(
            padding: EdgeInsets.symmetric (horizontal:20),
            child: Container(child: Text('Twitter', style: TextStyle(color: Colors.white, fontSize: 30))),
          ), 
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 59, 157, 223),
            shape: StadiumBorder()
          )
        ),
   
        ),
            

      ] 
      ),
        
        
      ),

    );
  
  }
}