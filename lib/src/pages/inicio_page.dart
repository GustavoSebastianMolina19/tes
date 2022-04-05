import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes/src/models/category_model.dart';
import 'package:tes/src/services/tala_services.dart';
import 'package:tes/src/widgets/lista_talacheros_widget.dart';

class ContartosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 207, 51),
        body: Column(
          children: [
            _ListaCategoria(),
            Expanded(
              child: ListaTalacheros(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ListaCategoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categorias = Provider.of<TalaServices>(context);
    final categories = categorias.categories;
    return Container(
      color: Color.fromARGB(255, 255, 207, 51),
      width: double.infinity,
      height: 80,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final cName = categories[index].name;
          return Container(
            width: 105,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  _CategoryButton(
                    categoria: categories[index],
                  ),
                  SizedBox(height: 5),
                  Text(
                    '${cName[0].toUpperCase()}${cName.substring(1)}',
                    style: TextStyle(
                        color: (categorias.selectedCategory == cName)
                            ? Colors.white
                            : Colors.black54),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CategoryButton extends StatelessWidget {
  final Category categoria;

  const _CategoryButton({required this.categoria});

  @override
  Widget build(BuildContext context) {
    final talaServices = Provider.of<TalaServices>(context);
    final colorI = (talaServices.selectedCategory == this.categoria.name)
        ? Colors.black
        : Colors.white;
    return GestureDetector(
      onTap: () {
        final talaServices = Provider.of<TalaServices>(context, listen: false);
        talaServices.selectedCategory = categoria.name;
      },
      child: Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(shape: BoxShape.circle, color: colorI),
        child: Icon(
          categoria.icon,
          color: (talaServices.selectedCategory == this.categoria.name)
              ? Colors.white
              : Colors.black54,
        ),
      ),
    );
  }
}
