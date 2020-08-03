import 'package:flutter/material.dart';

class UsuarioInfo with ChangeNotifier{
  String _nombre;
  String _password;

  get getUsuario{ return this._nombre; }
  set setNombre(String nombre){ 
    this._nombre = nombre;
    notifyListeners();
  }
  set setPassword(String password){ 
    this._password = password;
    notifyListeners();
  }
}