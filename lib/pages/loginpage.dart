import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practica/pages/homepage.dart';
import 'package:provider_practica/providers/usuarioinfo.dart';

class LoginPage extends StatelessWidget {  
  final _nombreController = TextEditingController();
  final _passwordController = TextEditingController();
  final boxDecorationStyle = BoxDecoration(color: Color(0xFF6CA8F1), borderRadius: BorderRadius.circular(10.0),
    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6.0,offset: Offset(0, 2),),],
  );
  @override
  Widget build(BuildContext context) {    
    final usuarioInfo = Provider.of<UsuarioInfo>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Material App'),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30,),
            Text('Sing in', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: boxDecorationStyle,
              child: TextField(
                controller: _nombreController,
                decoration: InputDecoration(
                  hintText: 'Usuario',
                  prefixIcon: Icon(Icons.person)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: boxDecorationStyle,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,  
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              child: RaisedButton(
                elevation: 5,
                padding: EdgeInsets.all(5),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: Text('Login', style: TextStyle(fontSize: 20),),
                onPressed: () {
                  if(!(_nombreController.text == '' || _passwordController.text == '')){
                    usuarioInfo.setNombre = _nombreController.text;
                    usuarioInfo.setPassword = _passwordController.text;
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage()),
                      (Route<dynamic> route) => false,);
                  }
                }, 
              ),
            )
          ],
        ),
      ),
    );
  }
}