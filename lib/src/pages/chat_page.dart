import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 255, 207, 51),
      body: SafeArea(
        child: Column(
          children: [
            _headChat(),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  child: Text('Mensajes'),
                ),
              ),
            ),
            _newMessageWidget(),
            //NewMessageWidget(idUser: widget.user.idUser)
          ],
        ),
      ),
    );
  }

  Widget _headChat() {
    return Container(
      height: 80,
      padding: EdgeInsets.all(16).copyWith(left: 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const BackButton(color: Colors.white),
              const Expanded(
                child: Text(
                  'Usuario',
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
                  _icono(Icons.call),
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

  Widget _icono(IconData icono) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white54,
      ),
      child: Icon(icono, size: 25, color: Colors.white),
    );
  }
}

class _newMessageWidget extends StatelessWidget {
  final _controller = TextEditingController();
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _controller,
              textCapitalization: TextCapitalization.sentences,
              autocorrect: true,
              enableSuggestions: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                labelText: 'Escribe tu mensaje',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 0),
                  gapPadding: 10,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              /*onChanged: (value) => setState(() {
                  message = value;
                })*/
            ),
          ),
          SizedBox(width: 20),
          GestureDetector(
            //onTap: message.trim().isEmpty ? null : "",
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 255, 207, 51),
              ),
              child: Icon(Icons.send, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
