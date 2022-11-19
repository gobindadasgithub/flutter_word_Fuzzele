import 'package:flutter/material.dart';

class CouProvider extends ChangeNotifier{
  int _counter=0;

  int get counter => _counter;

  increseCounter(){
    _counter++;
    notifyListeners();
  }


}