import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/category_model.dart';

class TalaServices with ChangeNotifier {
  //List<Article> headlines = [];
  String _selectedCategory = 'Albañil';

  List<Category> categories = [
    Category(FontAwesomeIcons.hammer, 'Albañil'),
    Category(FontAwesomeIcons.key, 'Cerrajeria'),
    Category(FontAwesomeIcons.toilet, 'Fontaneria'),
    Category(FontAwesomeIcons.carCrash, 'Mecanica'),
    Category(FontAwesomeIcons.tree, 'Carpinteria'),
    Category(FontAwesomeIcons.bolt, 'Electricista'),
    Category(FontAwesomeIcons.paintBrush, 'Pintor'),
  ];

  TalaServices() {
    //this.getArticulesByCategory(this._selectedCategory);
  }
  String get selectedCategory => _selectedCategory;

  set selectedCategory(String valor) {
    this._selectedCategory = valor;
    notifyListeners();
  }
}
