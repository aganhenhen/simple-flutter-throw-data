import 'package:flutter/material.dart';
import 'pinpad.dart';


class TarikTunai extends StatelessWidget {
  final String username;
  final int saldo;
  final controller1 = new TextEditingController();
  TarikTunai(this.username,this.saldo);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarik Dana Anda'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(hintText: 'Jumlah Tarik Tunai'),
              keyboardType: TextInputType.number,
              controller: controller1,
            ),
          ),
          RaisedButton(
            child: Text('Tarik Dana'),
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pinpad(username, 'DONE',saldo,int.parse(controller1.text)),
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
