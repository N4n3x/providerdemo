import 'package:flutter/material.dart';

class CompteurProvider with ChangeNotifier {
  int _compteur;

  CompteurProvider(this._compteur);

  // Getter + Setter
  int get counter => _compteur;
  set counter(int value) {
    _compteur = value;
  }

  // Logique
  void increment() {
    _compteur++;
    notifyListeners();
  }
}
