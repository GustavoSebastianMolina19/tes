import 'package:flutter/material.dart';
import 'package:tes/src/pages/chat_page.dart';
import 'package:tes/src/pages/perfil_page.dart';

class MensajesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        actions: [_perfilButton()],
      ),*/
      backgroundColor: Color.fromARGB(253, 255, 207, 51),
      body: SafeArea(
        child: Column(children: [
          _headChat(),
          Expanded(child: buildChats()),
        ]),
      ),
    );
  }

  Widget buildChats() => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              height: 75,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatPage(),
                  ));
                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/no-image.png'),
                ),
                title: Text('Usuario'),
              ),
            );
          },
          itemCount: 20,
        ),
      );

  Widget _headChat() {
    return Container(
      height: 80,
      padding: EdgeInsets.all(16).copyWith(left: 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 20),
              //const BackButton(color: Colors.white),
              const Expanded(
                child: Text(
                  'Mensajes',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _perfilButton()
                  //SizedBox(width: 12),
                  //buildIcon(Icons.videocam),
                ],
              ),
              SizedBox(width: 4),
            ],
          )
        ],
      ),
    );
  }
}

class _perfilButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'perfil');
        //Navigator.pushReplacementNamed(context, 'perfil');
      },
      child: Container(
        padding: const EdgeInsets.all(4),
        child: const CircleAvatar(
          //backgroundImage: AssetImage('assetes/no-image.png'),
          child: Text(
            'US',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
