import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final photo = 
    Container(

      margin: const EdgeInsets.only(top: 20.0, left: 20.0),

      alignment: Alignment.center,
      
      height: 100.0,

    child: Container(

      margin: const EdgeInsets.only(top: 20.0, left: 20.0),

      alignment: Alignment.center,
      width: 100.0,
      height: 100.0,

      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/images/jo.jpeg"))),
    )
    );
    return Scaffold(
      body: SafeArea(
        
        child: Column(
          
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  
                   Stack(
            children: [
             photo,
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: const EdgeInsets.only(top: 50.0, left: 10.0),
                
               
              ),
            ],
          ),
          
                  Center(
                    child: 
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'profile2');
                      },
                      child: Text('Perfil personal'))
                      ),
                       Center(
                    child: 
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'profile4');
                      },
                      child: Text('Experiencia Laboral'))
                      ),
                       Center(
                    child: 
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'profile3');
                      },
                      child: Text('Mis Redes Sociales'))
                      ),
                      Center(
                    child: 
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'profile1');
                      },
                      child: Text('Mi red social favorita'))
                      )
                  ],
          ), 
        ),
      );
  }
}


