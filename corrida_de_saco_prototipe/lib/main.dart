import 'package:corrida_de_saco_prototipe/screens/Amigos.dart';
import 'package:corrida_de_saco_prototipe/screens/inicial.dart';
import 'package:corrida_de_saco_prototipe/screens/tutorial.dart';
import 'package:flutter/material.dart';
import 'screens/loading.dart';
import 'package:corrida_de_saco_prototipe/Global.dart';

void main() {
  runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          buttonColor: Color.fromRGBO(166, 166, 166, 1),
          scaffoldBackgroundColor: Color.fromRGBO(255, 224, 204, 1)),
      title: "Corrida de saco"));
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buttonHowPlay() {
    return Container(
        height: 50.0,
        width: 200.0,
        child: RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TutorialPage()));
            },
            child: Text("Como Jogar",
                style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal))));
  }

  Widget _buttonEnter() {
    return Container(
        height: 50.0,
        width: 200.0,
        child: RaisedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => InicialPage()));
            },
            child: Text("Entrar",
                style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal))));
  }

  Widget _buttonFacebookLogin() {
    return Container(
        height: 50.0,
        width: 200.0,
        child: RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Login com ",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.normal)),
                  Image.asset("assets/face.png", height: 35.0)
                ])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: PreferenciasDoUsuario.COR_TEMA,
          child: Container(height: 50.0),
        ),
        appBar: AppBar(
            backgroundColor: PreferenciasDoUsuario.COR_TEMA,
            title: Text(
              "Corrida de saco",
              style: TextStyle(fontSize: 30.0),
            ),
            centerTitle: true),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
              child: Image.asset("assets/corrida.jpg")),
          _buttonHowPlay(),
          SizedBox(height: 20.0),
          _buttonEnter(),
          SizedBox(height: 20.0),
          _buttonFacebookLogin()
        ]))));
  }
}
