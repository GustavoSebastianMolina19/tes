import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_crearFondo(context), _loginForm(context)],
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              child: Container(
            height: 180.0,
          )),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0)
              ],
            ),
            child: Column(
              children: [
                const Text('Ingreso', style: TextStyle(fontSize: 20.0)),
                const SizedBox(height: 10.0),
                _cEmail(),
                _cPassword(),
                const SizedBox(height: 20.0),
                _cButtonInicio(context),
              ],
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, 'registro'),
            child: Text('Crear cuenta'),
          ),
          SizedBox(height: 100.0)
        ],
      ),
    );
  }

  /***.  Elementos del login */
  Widget _cEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            Icons.email_outlined,
            color: Color.fromARGB(255, 255, 207, 51),
          ),
          hintText: 'ejemoplo@correo.com',
          labelText: 'Correo electronico',
        ),
      ),
    );
  }

  Widget _cPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: const TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Color.fromARGB(255, 255, 207, 51),
          ),
          labelText: 'Contraseña',
        ),
      ),
    );
  }

  Widget _cButtonInicio(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'home');
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80),
          child: const Text(
            'Ingresar',
            style: TextStyle(color: Colors.black),
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: Color.fromARGB(253, 255, 207, 51),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ));
  }

  /// ********.   Fondo login                ********* */

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fondo = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(253, 255, 207, 51),
            Color.fromARGB(255, 255, 207, 51),
          ],
        ),
      ),
    );

    final cirulo = Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: const Color.fromARGB(133, 255, 255, 255)),
    );

    return Stack(
      children: [
        fondo,
        Positioned(top: 60.0, left: 260.0, child: cirulo),
        //Positioned(top: -40.0, left: -30.0, child: cirulo),
        Positioned(top: -50.0, left: -10.0, child: cirulo),
        Positioned(top: 120.0, left: 20.0, child: cirulo),
        //Positioned(top: -50.0, left: 2300.0, child: cirulo),
        Container(
          padding: EdgeInsets.only(top: 70.0),
          child: Column(
            children: [
              Container(
                //width: double.infinity * 0.5,
                height: 120,
                child: Image.asset('assets/LogoTES.jpg'),
              ),
              //Image.asset('assets/LogoTES.jpg'),
              //Icon(Icons.person_pin_circle_outlined,
              //color: Colors.white, size: 80),
              const SizedBox(height: 10.0, width: double.infinity),
              const Text(
                'Inicio de sesion',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 20.0),
              )
            ],
          ),
        ),
      ],
    );
  }
}
