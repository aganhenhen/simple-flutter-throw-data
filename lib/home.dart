import 'package:flutter/material.dart';
import 'pinpad.dart';
import 'tariktunai.dart';
import 'transferdana.dart';

class Home extends StatelessWidget {
  final String username;
  final int saldo;
  Home(this.username, this.saldo);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text("Tarik Tunai"),
            subtitle: Text("Tarik Dana Anda Dari Tabungan"),
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TarikTunai(username, saldo),
                    ),
                  ),
                },
          ),
          ListTile(
            leading: Icon(Icons.send),
            title: Text("Transfer"),
            subtitle: Text("Transfer Dana Anda Dari sini"),
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Transferdana(username, saldo),
                    ),
                  ),
                },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Cek Saldo"),
            subtitle: Text("Cek Saldo Anda"),
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pinpad(username, 'INFS', saldo, 0),
                    ),
                  ),
                },
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("Orientasi"),
            subtitle: Text("Cek Orientasi"),
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pinpad(username, 'INFS', saldo, 0),
                    ),
                  ),
                },
          )
        ],
      ),
    );
  }
}
