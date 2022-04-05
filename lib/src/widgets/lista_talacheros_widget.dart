import 'package:flutter/material.dart';
import 'package:tes/src/pages/chat_page.dart';

class ListaTalacheros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      //topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            _Talachero(),
            _Talachero(),
            _Talachero(),
            _Talachero(),
            _Talachero(),
            _Talachero(),
            _Talachero(),
            _Talachero(),
            _Talachero(),
            _Talachero(),
            _Talachero(),
            _Talachero(),
            _Talachero(),
          ],
        ),
      ),
    );
  }
}

class _Talachero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(color: Color.fromARGB(253, 255, 207, 51), width: 2.0),
      ),
      child: Column(
        children: [
          ListTile(
            leading: _imgTalachero(),
            /*Image(
              image: AssetImage('assets/no-image.png'),
            ),*/
            title: Text('Nombre Talachero'),
            subtitle: Text('Dirección'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsetsDirectional.only(start: 20),
                  child: Text('Calificación')),
              //TextButton(onPressed: () {}, child: Text('Cancelar')),
              _msjButton(context),
            ],
          )
        ],
      ),
    );
  }

  Widget _imgTalachero() {
    return CircleAvatar(
      backgroundColor: Color.fromARGB(253, 255, 207, 51),
      radius: 35,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/no-image.png'),
        radius: 27,
      ),
    );
  }

  Widget _msjButton(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(end: 5, start: 170),
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChatPage(),
            ));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.message_outlined),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            primary: Color.fromARGB(253, 255, 207, 51),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
          )),
    );
  }
}

/*class _TarjetaNombre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Nombre Talachero',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }
}

class _TarjetaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'Datos Talachro',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class _TarjetaImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70), bottomRight: Radius.circular(50)),
        child: Container(
          child: Image(image: AssetImage('assets/no-image.png')),
        ),
      ),
    );
  }
}*/
