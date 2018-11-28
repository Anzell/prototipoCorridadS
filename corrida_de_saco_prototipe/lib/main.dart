import 'package:corrida_de_saco_prototipe/screens/inicial.dart';
import 'package:corrida_de_saco_prototipe/screens/tutorial.dart';
import 'package:flutter/material.dart';
import 'screens/loading.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      bottomAppBarColor: Color.fromRGBO(200, 100, 100, 1),
      buttonColor: Color.fromRGBO(166, 166, 166, 1),
      scaffoldBackgroundColor: Color.fromRGBO(255, 224, 204, 1),
      primaryColor: Color.fromRGBO(200, 100, 100, 1),
    ),
    title: "Corrida de saco",
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Corrida de saco",
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
              child: Image.asset("assets/corrida.jpg"),
            ),
            Container(
              height: 50.0,
              width: 200.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TutorialPage()));
                },
                child: Text(
                  "Como Jogar",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50.0,
              width: 200.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => InicialPage()));
                },
                child: Text(
                  "Entrar",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50.0,
              width: 200.0,
              child: RaisedButton(
                color: Colors.blueAccent,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login com ",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.normal),
                    ),
                    Image.asset(
                      "assets/face.png",
                      height: 35.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
