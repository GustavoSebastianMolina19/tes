import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes/src/pages/contratos_page.dart';
import 'package:tes/src/pages/inicio_page.dart';
import 'package:tes/src/pages/mensaje_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NavegacionModel(),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 207, 51),
        body: _paginas(),
        bottomNavigationBar: _Navegacion(),
      ),
    );
  }
}

//Paginas que se utilizarán en el button menu

class _paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);

    return PageView(
      controller: navegacionModel.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        ContartosPage(),
        ContratosPage(),
        MensajesPage()
        //Tab1Page(),
        //Tap2Page(),
      ],
    );
  }
}

/// Código para el bottom navegation
class _Navegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);

    return BottomNavigationBar(
      currentIndex: navegacionModel.paginaActual,
      onTap: (i) => navegacionModel.paginaActual = i,
      selectedItemColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 255, 207, 51),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Contratos'),
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined), label: 'Mensajes'),
        //BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Pefil'),
      ],
    );
  }
}

class _NavegacionModel with ChangeNotifier {
  int _paginaActual = 0;
  PageController _pageController = PageController(initialPage: 0);

  int get paginaActual => this._paginaActual;

  set paginaActual(int valor) {
    this._paginaActual = valor;
    _pageController.animateToPage(valor,
        duration: Duration(milliseconds: 400), curve: Curves.linear);
    notifyListeners();
  }

  PageController get pageController => this._pageController;
}
