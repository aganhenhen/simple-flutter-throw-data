import 'package:flutter/material.dart';
import 'home.dart';

class Done extends StatelessWidget {
  final String username;
  final int saldo;
  Done(this.username, this.saldo);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text("Transaksi Sukses"),
          ),
          RaisedButton(
            child: Text('Kembali Ke Home'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(username, saldo),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
