import 'package:flutter/material.dart';

class ProfileUno extends StatelessWidget {
  const ProfileUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Stack(
            children: [
              Transform.translate(
                offset: Offset(0.0, -70.0),
                child: FadeInImage(
                    fit: BoxFit.contain,
                    placeholder: NetworkImage(
                        'https://images.unsplash.com/photo-1585111386393-e5e23c012437?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80'),
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1585111386393-e5e23c012437?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80')
                        ),
              ),
              Column(
                children: [
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    margin: EdgeInsets.only(top: 107.0, left: 10.0),
                    child: IconButton(
                        icon: Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  _accountInfo(),
                  _followTabs(),
                  _iconsTab(),
                ],
              )
            ],
          )
        ])),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          sliver: SliverGrid.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: [
            _photos(),
            _photos3(),
            _photos(),
            _photos3(),
            _photos3(),
            _photos(),
            _photos3(),
            _photos(),
            _photos1()
            ],
          ),
        )
      ],
    ));
  }
} //Clase

Widget _accountInfo() {
  return Center(
      child: Column(
    children: [
      CircleAvatar(
              backgroundImage: ExactAssetImage('assets/images/jonas.jpeg'),
          // Optional as per your use case
          // minRadius: 30,
          // maxRadius: 70,
        
       
        
        // backgroundImage: NetworkImage(
        //     'https://images.unsplash.com/photo-1532534677373-39ca190371ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1034&q=80'),
        radius: 60.0,
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Text('Jonathan Calle Condori',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 24.0)),
      ),
      Container(
        //margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Text('Estudiante de Ingeniera de Sistemas',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15.0)),
      )
    ],
  ));
}

Widget _followTabs() {
  return Container(
      color: Color.fromRGBO(0, 0, 0, 0.4),
      margin: EdgeInsets.only(top: 50.0),
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'AMIGOS',
                style: TextStyle(
                    color: Color.fromRGBO(255, 2555, 2555, 1.0),
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
              Text('2318',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 2555, 2555, 1.0),
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            children: [
              Text(
                'SIGUIENDO',
                style: TextStyle(
                    color: Color.fromRGBO(255, 2555, 2555, 1.0),
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
              Text('4556',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 2555, 2555, 1.0),
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            children: [
              Text(
                'SEGUIDORES',
                style: TextStyle(
                    color: Color.fromRGBO(255, 2555, 2555, 1.0),
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
              Text('3422',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 2555, 2555, 1.0),
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold))
            ],
          )
        ],
      ));
}

Widget _iconsTab() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            icon: Icon(Icons.picture_in_picture, size: 30.0), onPressed: () {}),
        IconButton(
            icon: Icon(Icons.insert_photo, size: 30.0), onPressed: () {}),
        IconButton(
            icon: Icon(Icons.play_circle_filled, size: 30.0), onPressed: () {})
      ],
    ),
  );
}

Widget _photos() {
  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        width: 10,
        height: 20,
        fit: BoxFit.fill ,
                    "assets/images/jo.jpeg",
               
                  ),
      
    ),
  );
}

Widget _photos1() {
  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        width: 10,
        height: 20,
        fit: BoxFit.fill ,
                    "assets/images/amooor.jpeg",
               
                  ),
      
    ),
  );
}

Widget _photos2() {
  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        width: 10,
        height: 20,
        fit: BoxFit.fill ,
                    "assets/images/dota.jpeg",
               
                  ),
      
    ),
  );
}


Widget _photos3() {
  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image(
        width: 200,
        height: 400,
        fit: BoxFit.cover,
        image: NetworkImage ('https://images.unsplash.com/photo-1567268377583-d1aaf9ccfc22?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80')
      )
    ),
  );
}