

import 'package:flutter/material.dart';

class ProfileDos extends StatelessWidget {
  const ProfileDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            ],
          ),
          _cardInfoProfile(),
        ],
      ),
    );
  }
}

Widget _cardInfoProfile() {
  return Transform.translate(
    offset: Offset(0.0, -115.0),
    child: Container(
      width: double.infinity,
      height: 480.0,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          _rectanguloGris(), 
          _profileInfo(),
          _stats(),
          _stats1(),
          _stats2(),
          _stats3()
        
        ],
      ),
    ),
  );
}

Widget _rectanguloGris() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: 60.0,
    height: 6.0,
    decoration: BoxDecoration(
        color: Color.fromRGBO(216, 216, 216, 1.0),
        borderRadius: BorderRadius.circular(8.0)),
  );
}

Widget _profileInfo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 9.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1617040619263-41c5a9ca7521?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Jonathan Calle C.',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0)),
            Text('Programador Junior',
                style: TextStyle(
                    color: Color.fromRGBO(194, 196, 207, 1.0),
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0))
          ],
        ),
        // RaisedButton(
        //   shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        //   color: Color.fromRGBO(245, 45, 86, 1.0),
        //   onPressed: () {},
        //   child: Text('follow', style: TextStyle(color: Colors.white)),
        // )
      ],
    ),
  );
}


Widget _stats(){
  return Container(
    height: 80.0,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color.fromRGBO(245, 245, 245, 1.0)),
    ),
    padding:  EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Center(
              child: Text(
                'PERFIL',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600
                ),

              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text(
                'Soy estudiante de la carrera de Ingenieria de Sistemas, curso el 7mo semestre',
                style: TextStyle(

                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
              
            ),
             Center(
              child: Text(
                'Tengo experiencia programando aplicaiones moviles, el lenguaje de programacion ',
                style: TextStyle(

                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
              
            ),
            Center(
              child: Text(
                'que utilizo es Dart que es de codigo abierto. Experiencia de un par de semanas.',
                style: TextStyle(

                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
              
            ),
            
          ],
        )
      ],
    ),
  );
}

Widget _stats1(){
  return Container(
    height: 80.0,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color.fromRGBO(245, 245, 245, 1.0)),
    ),
    padding:  EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Center(
              child: Text(
                'PROGRAMAS QUE UTILIZO A DIARIO',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600
                ),

              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text(
                'Visual Studio Code es un editor de código fuente, donde puedo programar a gusto.',
                style: TextStyle(                 
                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
            ),
            Center(
              child: Text(
                'Eclipse es un entorno de desarrollo software multi-lenguaje, 3 años de experiencia.',
                style: TextStyle(                 
                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
            ),
            Center(
              child: Text(
                'Unity es un motor de videojuego multiplataforma creado por Unity Technologies. ',
                style: TextStyle(                 
                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _stats2(){
  return Container(
    height: 80.0,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color.fromRGBO(245, 245, 245, 1.0)),
    ),
    padding:  EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Center(
              child: Text(
                'LENGUAJES DE PROGRAMACION QUE UTILIZO',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600
                ),

              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text(
                'Java es un lenguaje de programación utilizado para codificar aplicaciones web.',
                style: TextStyle(
                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
            ),
             Center(
              child: Text(
                'PHP es un lenguaje de programación de uso general, para el desarrollo web.',
                style: TextStyle(
                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
             ),
              Center(
              child: Text(
                'Frameworks (Laravel, Symfony, Zend, Phalcon, entre otros).',
                style: TextStyle(
                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
            )
          ],
        )
      ],
    ),
  );
}


Widget _stats3(){
  return Container(
    height: 80.0,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color.fromRGBO(245, 245, 245, 1.0)),
    ),
    padding:  EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Center(
              child: Text(
                'HAY ALGO EN TI QUE EL MUNDO NECESITA',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600
                ),

              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text(
                'TODO LO QUE NECESITAS PAR LOGRAS TUS OBJETIVOS YA ESTA EN TI',
                style: TextStyle(
                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
            ),
             Center(
              child: Text(
                '2314',
                style: TextStyle(
                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
            ),
             Center(
              child: Text(
                '2314',
                style: TextStyle(
                  color: Color.fromRGBO(194, 196, 202, 1.0),
                  fontSize: 8.0,
                  fontWeight: FontWeight.normal
                ),

              ),
            )
          ],
        )
      ],
    ),
  );
}