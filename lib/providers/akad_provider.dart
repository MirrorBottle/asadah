import 'package:flutter/material.dart';

class AkadProvider extends ChangeNotifier {
  final List<String> _categories = ['Elektronik', 'Kendaraan'];
  Map<String, dynamic> _data = {"category": "Elektronik", "approvement": false};


  List<String> get categories => _categories;
  Map<String, dynamic> get data => _data;

  changeData(Map<String, dynamic> data) {
    _data = {..._data, ...data};
    notifyListeners();
  }

}
