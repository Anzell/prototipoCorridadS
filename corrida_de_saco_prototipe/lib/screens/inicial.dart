import 'package:flutter/material.dart';
import 'package:corrida_de_saco_prototipe/Global.dart';

class InicialPage extends StatefulWidget {
  @override
  _InicialPageState createState() => _InicialPageState();
}

const COR_TRANSPARENTE = Color.fromARGB(0, 255, 0, 0);
const BORDA_LADO_TRANSPARENTE = BorderSide(color: COR_TRANSPARENTE);

class BotaoCor extends Container {
  State _state;
  AlertDialog _dialog;
  Color _cor;

  BotaoCor(State state, AlertDialog d, Color cor)
      : super(
          child: new RawMaterialButton(
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(state.context, rootNavigator: true)
                    .pop("temadialog");
                state.setState(() {
                  CoresDoAplicativoSingleton().COR_TEMA = cor;
                });
              },
              backgroundColor: cor,
            ),
          ),
          width: 40,
          height: 40,
        ) {
    _state = state;
    _dialog = d;
    _cor = cor;
  }
}

class _InicialPageState extends State<InicialPage> {
  _InicialPageState _state;

  _InicialPageState() {
    _state = this;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: CoresDoAplicativoSingleton().COR_TEMA,
          actions: <Widget>[
            IconeNoTopo(
              'assets/gift_iconfinder_7_2185392.png',
              () {
                print("Clicou gift");
              },
            ),
            Container(
              width: 60,
            ),
            IconeNoTopo('assets/add_user_iconfinder_1902270.png', () {
              print("Clicou add user");
            }),
            Container(
              width: 30,
            ),
            IconeNoTopo('assets/options_iconfinder_free-14_463013.png', () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    AlertDialog dialog;
                    dialog = new AlertDialog(
                      key: Key("temadialog"),
                      title: new Text("Tema"),
                      actions: <Widget>[
                        Column(
                          children: <Widget>[
                            BotaoCor(_state, dialog, Colors.red),
                            BotaoCor(_state, dialog, Colors.blue),
                            BotaoCor(_state, dialog, Colors.green),
                            BotaoCor(_state, dialog, Colors.yellow),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            BotaoCor(_state, dialog, Colors.amber),
                            BotaoCor(_state, dialog, Colors.black),
                            BotaoCor(_state, dialog, Colors.black12),
                            BotaoCor(_state, dialog, Colors.deepOrange),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            BotaoCor(_state, dialog, Colors.lime),
                            BotaoCor(_state, dialog, Colors.orange),
                            BotaoCor(_state, dialog, Colors.pinkAccent),
                            BotaoCor(_state, dialog, Colors.blueGrey),
                          ],
                        )
                      ],
                    );
                    return dialog;
                  });
            }),
            Container(
              width: 10,
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Image.asset(
                              "assets/homem_iconfinder_Man-14_379487.png"),
                          flex: 1,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                child: Text('DigaoParceiro'),
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              ),
                              Padding(
                                child: Align(
                                  child: Text(
                                    'Level',
                                    textAlign: TextAlign.center,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              ),
                              Padding(
                                child: Row(children: <Widget>[
                                  Text('6 '),
                                  Expanded(
                                      child:
                                          LinearProgressIndicator(value: 0.6)),
                                  Text(' 7'),
                                ]),
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              ),
                              Padding(
                                child: Align(
                                  child: Text('Titulo: Pulador'),
                                  alignment: Alignment.center,
                                ),
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              ),
                              Padding(
                                child: Text('Pontos: 26'),
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              )
                            ],
                          ),
                          flex: 1 /*PESO 1*/,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Align(
                          child: Text("Ranking Semanal:"),
                          alignment: Alignment.topLeft,
                        ),
                        Table(
                          border: TableBorder.all(
                              width: 1.0, color: COR_TRANSPARENTE),
                          children: [
                            TableRow(
                              children: [
                                Text(""),
                                Text("Apelido"),
                                Text("Pontuação"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("1º"),
                                Text("M1jor"),
                                Text("80"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("2º"),
                                Text("D3struct0r"),
                                Text("72"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("3º"),
                                Text("L0k0"),
                                Text("71"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("4º"),
                                Text("M1st3rChef"),
                                Text("69"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("5º"),
                                Text("Ps4 > Xbox"),
                                Text("65"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("6º"),
                                Text("Luciano Hulk"),
                                Text("58"),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20)),
            Stack(
              children: <Widget>[
                Container(
                  width: 1000,
                  height: 1000,
                  color: CoresDoAplicativoSingleton().COR_TEMA,
                ),
                Align(
                  child: RaisedButton(
                      child: Text("JOGAR"),
                      color: Colors.green,
                      onPressed: () {}),
                  alignment: Alignment.center,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class IconeNoTopo extends Material {
  IconeNoTopo(String path, GestureTapCallback quandoClicar)
      : super(
          elevation: 4.0,
          color: Colors.transparent,
          child: Ink.image(
            image: AssetImage(path),
            fit: BoxFit.cover,
            width: 50.0,
            height: 50.0,
            child: InkWell(
              onTap: quandoClicar,
              child: null,
            ),
          ),
        );
}
