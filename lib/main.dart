import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  final controller1 = new TextEditingController();
  final controller2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            ),
        body: Builder(
          builder: (context) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Username'),
                      controller: controller1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'PIN'),
                      keyboardType: TextInputType.number,
                      controller: controller2,
                    ),
                  ),
                  RaisedButton(
                    child: Text('Login'),
                    onPressed: () {
                      if (controller1.text == 'saya' &&
                          controller2.text == '1234') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(controller1.text,10000000),
                          ),
                        );
                      } else {
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
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
