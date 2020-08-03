import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practica/pages/loginpage.dart';
import 'package:provider_practica/providers/usuarioinfo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UsuarioInfo(),
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => LoginPage()
        }
      ),
    );
  }
}