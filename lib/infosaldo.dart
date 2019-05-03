import 'package:flutter/material.dart';

class Infosaldo extends StatelessWidget{
  final String username;
  final int saldo;
  Infosaldo(this.username,this.saldo);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
      appBar: AppBar(
        title: Text('Info Saldo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text("Saldo Saya:"),
          ),
          Text('$saldo')
        ],
      )
      ,
    );
  }
  
}