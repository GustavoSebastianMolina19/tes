import 'package:flutter/material.dart';
import 'package:tes/src/widgets/lista_contratos_widget.dart';

class ContratosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(253, 255, 207, 51),
        body: Column(
          children: [_headChat(), Expanded(child: ListasContratos())],
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
              const SizedBox(width: 20),
              //const BackButton(color: Colors.white),
              const Expanded(
                child: Text(
                  'Contratos',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
