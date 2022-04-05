import 'package:flutter/material.dart';
import 'package:tes/src/pages/chat_page.dart';

class ListasContratos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //_listContratosPendientes(context),
        _listContratosPendientes(context),
        _listContratosEnProceso(context),
        _listContratosFinalizado(context),
        //_listContratosPendientes(context),
        //_listContratosPendientes(context),
        //_contratoItemPendiente(),
        //_contratoItemPendiente(),
      ],
    );
  }

  Widget _listContratosPendientes(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      width: double.infinity,
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border:
              Border.all(color: Color.fromARGB(253, 255, 207, 51), width: 2)),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              //decoration: BoxDecoration(),

              child: Text(
                'Contratos sin finalizar',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 15),
              )),
          Expanded(
            child: ListView(
              children: [
                _contratoItemPendiente(bandera: true),
                _contratoItemPendiente(bandera: true),
                _contratoItemPendiente(bandera: true),
                _contratoItemPendiente(bandera: true),
                _contratoItemPendiente(bandera: true),
                _contratoItemPendiente(bandera: true),
                //_contratoItemPendiente(),
                //_contratoItemPendiente(),
                //_contratoItemPendiente(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _listContratosEnProceso(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Container(
    height: size.height * 0.5,
    width: double.infinity,
    padding: EdgeInsets.all(3),
    margin: EdgeInsets.all(3),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color.fromARGB(253, 255, 207, 51), width: 2)),
    child: Column(
      children: [
        Container(
            width: double.infinity,
            //decoration: BoxDecoration(),

            child: Text(
              'Contratos en proceso',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 15),
            )),
        Expanded(
          child: ListView(
            children: [
              _contratoItemPendiente(bandera: false),
              _contratoItemPendiente(bandera: false),
              _contratoItemPendiente(bandera: false),
              _contratoItemPendiente(bandera: false),
              _contratoItemPendiente(bandera: false),
              _contratoItemPendiente(bandera: false),
              //_contratoItemPendiente(),
              //_contratoItemPendiente(),
              //_contratoItemPendiente(),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _listContratosFinalizado(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Container(
    height: size.height * 0.5,
    width: double.infinity,
    padding: EdgeInsets.all(3),
    margin: EdgeInsets.all(3),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color.fromARGB(253, 255, 207, 51), width: 2)),
    child: Column(
      children: [
        Container(
            width: double.infinity,
            //decoration: BoxDecoration(),

            child: Text(
              'Contratos Finalizados',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 15),
            )),
        Expanded(
          child: ListView(
            children: [
              _contratoItemPendiente(bandera: false),
              _contratoItemPendiente(bandera: false),
              _contratoItemPendiente(bandera: false),
              _contratoItemPendiente(bandera: false),
              _contratoItemPendiente(bandera: false),
              _contratoItemPendiente(bandera: false),
              //_contratoItemPendiente(),
              //_contratoItemPendiente(),
              //_contratoItemPendiente(),
            ],
          ),
        ),
      ],
    ),
  );
}

class _contratoItemPendiente extends StatelessWidget {
  final bandera;
  const _contratoItemPendiente({required this.bandera});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(color: Color.fromARGB(253, 255, 207, 51), width: 2.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: _imgTalachero(),
            /*Image(
              image: AssetImage('assets/no-image.png'),
            ),*/
            title: Text('Nombre Talachero'),
            subtitle: Text('Dirección'),
          ),
          Container(
              padding: EdgeInsetsDirectional.only(start: 20),
              child: Text('Trabajo')),
          SizedBox(height: 2),
          Container(
              padding: EdgeInsetsDirectional.only(start: 20),
              child: Text('10-03-2022')),
          SizedBox(height: 2),
          Container(
              padding: EdgeInsetsDirectional.only(start: 20),
              child: Text('2000')),
          //SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsetsDirectional.only(start: 20),
                  child: Text('Calificación')),
              //TextButton(onPressed: () {}, child: Text('Cancelar')),
              _msjButton(context),
            ],
          ),
          //(bandera) ? Container() : null;
          (bandera)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _cancelarButton(),
                    _aceptarButton(),
                  ],
                )
              : Container()
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

  Widget _aceptarButton() {
    return Container(
      padding: EdgeInsetsDirectional.only(end: 5, start: 10),
      child: ElevatedButton(
          onPressed: () {
            /*Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChatPage(),
            ));*/
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.check),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            primary: Colors.blueAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
          )),
    );
  }

  Widget _cancelarButton() {
    return Container(
      padding: EdgeInsetsDirectional.only(end: 5, start: 170),
      child: ElevatedButton(
          onPressed: () {
            /*Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChatPage(),
            ));*/
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.cancel_outlined),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            primary: Colors.redAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
          )),
    );
  }
}
