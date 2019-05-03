import 'package:flutter/material.dart';
import 'pinpad.dart';

class Transferdana extends StatelessWidget {
  final int saldo;
  final String username;
  Transferdana(this.username, this.saldo);
  final controller1 = new TextEditingController();
  final controller2 = new TextEditingController();
  final controller3 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer Dana'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(hintText: 'Kode Bank Tujuan'),
              keyboardType: TextInputType.number,
              controller: controller1,
            ),
          ),
           Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(hintText: 'Nomor Rekening'),
              keyboardType: TextInputType.number,
              controller: controller2,
            ),
          ),
           Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(hintText: 'Jumlah Dana'),
              keyboardType: TextInputType.number,
              controller: controller3,
            ),
          ),
          RaisedButton(
            child: Text('Tarik Dana'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pinpad(username, 'DONE',saldo,int.parse(controller3.text)),
                ),
              );
            },
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
