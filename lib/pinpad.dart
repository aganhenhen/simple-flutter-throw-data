import 'package:flutter/material.dart';
import 'infosaldo.dart';
import 'done.dart';

class Pinpad extends StatelessWidget {
  final String username;
  final String nextTo;
  int saldo;
  final int trxnum;
  final controller1 = new TextEditingController();
  Pinpad(this.username, this.nextTo, this.saldo,this.trxnum);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Pinpad'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(hintText: 'PIN'),
              keyboardType: TextInputType.number,
              controller: controller1,
            ),
          ),
          RaisedButton(
            child: Text('Lakukan Transaksi'),
            onPressed: () {
              if (controller1.text == '1234' && nextTo == 'INFS') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Infosaldo(username,saldo),
                  ),
                );
              } else if(controller1.text == '1234' && nextTo == 'DONE') {
                saldo = saldo - trxnum;
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Done(username,saldo),
                  ),
                );
              }else {
                print('Salah Pin');
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Pin Salah'),
                ));
              }
            },
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
