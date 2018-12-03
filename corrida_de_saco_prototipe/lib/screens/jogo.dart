import 'package:corrida_de_saco_prototipe/Global.dart';
import 'package:corrida_de_saco_prototipe/widgets/Icone.dart';
import 'package:flutter/material.dart';

class JogoPage extends StatefulWidget {
  @override
  _JogoPageState createState() => _JogoPageState();
}

const COR_PISTA = Colors.amberAccent;

class _JogoPageState extends State<JogoPage> {
  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
                title: new Text('Saindo'),
                content: new Text('Tem certeza que deseja sair?'),
                actions: <Widget>[
                  new FlatButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: new Text('CANCELAR'),
                  ),
                  new FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                        Navigator.of(context).pop(
                            true); //pop 2 vezes para não ir para tela de loading
                      },
                      child: new Text('SAIR',
                          style: TextStyle(color: Colors.redAccent))),
                ],
              ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: PreferenciasDoUsuario.COR_TEMA,
            title: new Text("Jogando"),
          ),
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    child: Table(
                      border: TableBorder.all(color: Colors.black, width: 2),
                      children: [
                        TableRow(children: [
                          Column(
                            children: <Widget>[
                              Padding(
                                child: Image.asset("assets/corredor1.png",
                                    width:
                                        MediaQuery.of(context).size.width / 3),
                                padding: EdgeInsets.only(top: 40),
                              ),
                              Align(
                                child: Image.asset(
                                  "assets/banana.png",
                                  width: 45,
                                ),
                                alignment: Alignment.bottomRight,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height /
                                        3.59),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                child: Text(
                                  '!',
                                  style: TextStyle(
                                      fontSize: 80, color: Colors.red),
                                ),
                                padding: EdgeInsets.only(top: 10),
                              ),
                              Image.asset("assets/corredor2.png",
                                  width: MediaQuery.of(context).size.width / 3),
                              Align(
                                child: Image.asset(
                                  "assets/tartaruga.png",
                                  width: 45,
                                ),
                                alignment: Alignment.bottomRight,
                              )
                            ],
                          ),
                          Padding(
                            child: Image.asset("assets/corredor3.png",
                                width: MediaQuery.of(context).size.width / 3),
                            padding: EdgeInsets.only(top: 10),
                          ),
                        ]),
                      ],
                    ),
                    color: COR_PISTA,
                  ),
                  Container(
                    color: COR_PISTA,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 12.9,
                    child: Container(
                      child: Text(
                        "CHEGADA",
                        style: TextStyle(
                            color: Colors.red,
                            fontStyle: FontStyle.normal,
                            fontSize: 40),
                      ),
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: PreferenciasDoUsuario.COR_TEMA,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icone("assets/tartaruga.png", () {}),
                        Icone("assets/banana.png", () {}),
                        Icone("assets/estrela.png", () {}),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
