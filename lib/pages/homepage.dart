import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practica/providers/usuarioinfo.dart';

class HomePage extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {    
    final usuarioInfo = Provider.of<UsuarioInfo>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: Text('Bienvenido ${usuarioInfo.getUsuario}', style: TextStyle(fontSize: 20),)
      ),
    );
  }
}