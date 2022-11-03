import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Column(
          
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  
                   Stack(
            children: [
              FadeInImage(
                  placeholder: NetworkImage(
                      'https://images.unsplash.com/photo-1482225084339-a0ef1162ad9d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80'),
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1482225084339-a0ef1162ad9d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80')),
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.only(top: 50.0, left: 10.0),
                
               
              ),
            ],
          ),
          
                  Center(
                    child: 
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'profile1');
                      },
                      child: Text('Perfil 1'))
                      ),
                       Center(
                    child: 
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'profile2');
                      },
                      child: Text('Perfil 2'))
                      ),
                       Center(
                    child: 
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'profile1');
                      },
                      child: Text('Perfil 3'))
                      )
                  ],
          ), 
        ),
      );
  }
}


