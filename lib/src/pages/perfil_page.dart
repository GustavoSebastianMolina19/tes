import 'package:flutter/material.dart';

class PefilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /*appBar: AppBar(
        title: Text('Perfil'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo_size_select_actual),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
          )
        ],
      ),*/
        backgroundColor: Color.fromARGB(253, 255, 207, 51),
        body: Column(
          children: [
            _headChat(),
            Expanded(child: _formularioEditar(context)),
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
              //const SizedBox(width: 20),
              const BackButton(color: Colors.white),
              const Expanded(
                child: Text(
                  'Perfil',
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
                  _icono(Icons.photo_size_select_actual),
                  SizedBox(width: 12),
                  _icono(Icons.camera_alt)
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

  Widget _formularioEditar(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      child: Container(
        color: Colors.white,
        child: ListView(children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Form(
                child: Column(
              children: [
                _imagen(),
                SizedBox(height: 10),
                Divider(),
                _datosNombre('Nombre'),
                SizedBox(height: 10),
                Divider(),
                _datosApellido('Apellidos'),
                SizedBox(height: 10),
                Divider(),
                _datosCorreo('pulido@mail.com'),
                SizedBox(height: 10),
                Divider(),
                _datosTelefono('4521201149'),
                SizedBox(height: 10),
                Divider(),
                _datosUbicacion('Centro'),
                SizedBox(height: 10),
                Divider(),
                _boton(context)
              ],
            )),
          ),
        ]),
      ),
    );
  }

  Widget _imagen() {
    return Container(
      //borderRadius: BorderRadius.circular(100),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border:
              Border.all(color: Color.fromARGB(255, 255, 207, 51), width: 4)),
      //decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset('assets/no-image.png'),
      ),
    );
  }

  Widget _datosNombre(String dato) {
    return TextFormField(
      //initialValue: dato,
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
        labelText: 'Nombre',
        icon: Icon(
          Icons.label,
          color: Color.fromARGB(255, 255, 207, 51),
        ),
      ),
      //onSaved: (value) => producto.titulo = value!,
      validator: (value) {
        if (value!.length < 3) {
          return 'Ingrese';
        } else {
          return null;
        }
      },
    );
  }

  Widget _datosApellido(String dato) {
    return TextFormField(
      //initialValue: dato,
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
        labelText: 'Apellidos',
        icon: Icon(
          Icons.label_important,
          color: Color.fromARGB(255, 255, 207, 51),
        ),
      ),
      //onSaved: (value) => producto.titulo = value!,
      validator: (value) {
        if (value!.length < 3) {
          return 'Ingrese ';
        } else {
          return null;
        }
      },
    );
  }

  Widget _datosCorreo(String dato) {
    return TextFormField(
      //initialValue: dato,
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
        labelText: 'Correo',
        icon: Icon(
          Icons.email,
          color: Color.fromARGB(255, 255, 207, 51),
        ),
      ),
      //onSaved: (value) => producto.titulo = value!,
      validator: (value) {
        if (value!.length < 3) {
          return 'Ingrese';
        } else {
          return null;
        }
      },
    );
  }

  Widget _datosTelefono(String dato) {
    return TextFormField(
      //initialValue: dato,
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
        labelText: 'Telefono',
        icon: Icon(
          Icons.phone,
          color: Color.fromARGB(255, 255, 207, 51),
        ),
      ),
      //onSaved: (value) => producto.titulo = value!,
      validator: (value) {
        if (value!.length < 3) {
          return 'Ingrese ';
        } else {
          return null;
        }
      },
    );
  }

  Widget _datosUbicacion(String dato) {
    return TextFormField(
      //initialValue: dato,
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
        labelText: 'Ubicacion',
        icon: Icon(
          Icons.location_on,
          color: Color.fromARGB(255, 255, 207, 51),
        ),
      ),
      //onSaved: (value) => producto.titulo = value!,
      validator: (value) {
        if (value!.length < 3) {
          return 'Ingrese';
        } else {
          return null;
        }
      },
    );
  }

  Widget _boton(BuildContext context) {
    return Container(
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pop(context);
        }, //(_guardando) ? null : _submit,
        label: Text('Guardar'),
        icon: Icon(Icons.save),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
