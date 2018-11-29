import 'package:corrida_de_saco_prototipe/screens/loading.dart';
import 'package:corrida_de_saco_prototipe/widgets/Icone.dart';
import 'package:flutter/material.dart';
import 'package:corrida_de_saco_prototipe/Global.dart';
import 'package:corrida_de_saco_prototipe/screens/inventory.dart';

class InicialPage extends StatefulWidget {
  @override
  _InicialPageState createState() => _InicialPageState();
}

const COR_TRANSPARENTE = Color.fromARGB(0, 255, 0, 0);
const BORDA_LADO_TRANSPARENTE = BorderSide(color: COR_TRANSPARENTE);

class BotaoCor extends Container {
  AlertDialog _dialog;

  BotaoCor(State stateDialog, State stateTelaInicial, AlertDialog d, Color cor)
      : super(
    child: new RawMaterialButton(
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(stateTelaInicial.context, rootNavigator: true).pop("DialogPreferencias");
          VoidCallback mudarEstado = () {
            PreferenciasDoUsuario.COR_TEMA = cor;
          };
          stateDialog.setState(mudarEstado);
          stateTelaInicial.setState(mudarEstado);
        },
        backgroundColor: cor,
      ),
    ),
    width: 40,
    height: 40,
  ) {
    _dialog = d;
  }
}

class DialogPreferencias extends StatefulWidget {
  _InicialPageState _stateTelaInicial;

  DialogPreferencias(_InicialPageState stateTelaInicial){
    _stateTelaInicial = stateTelaInicial;
  }

  @override
  _DialogPreferenciasState createState() => _DialogPreferenciasState(_stateTelaInicial);
}

class _DialogPreferenciasState extends State<DialogPreferencias> {
  AlertDialog _dialog;
  _InicialPageState _stateTelaInicial;

  _DialogPreferenciasState(_InicialPageState stateTelaInicial){
    _stateTelaInicial = stateTelaInicial;
  }

  @override
  Widget build(BuildContext context) {
    _dialog = AlertDialog(
      key: Key("DialogPreferencias"),
      title: new Text("Tema"),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.red),
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.blue),
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.yellow),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.amber),
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.black),
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.black12),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.lime),
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.orange),
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.pinkAccent),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.blueGrey),
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.deepOrange),
              BotaoCor(this, _stateTelaInicial, _dialog, Colors.green),
            ],
          ),
          Row(
            children: <Widget>[
              Icone(
                  "assets/iconfinder_speaker_1054973.png", () {
              }
              ),
              Container(
                width: 6,
                height: 2,
              ),
              Switch(
                  value: PreferenciasDoUsuario.COM_SOM,
                  onChanged: (enabled) {
                    setState(() {
                      PreferenciasDoUsuario.COM_SOM = enabled;
                    });
                  }
              )
            ],
          )
        ],
      ),
    );
    return _dialog;
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
              backgroundColor: PreferenciasDoUsuario.COR_TEMA,
              actions: <Widget>[
                Icone(
                  'assets/gift_iconfinder_7_2185392.png',
                      () {
                         Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => Inventory()));
                    print("Clicou gift");
                  },
                ),
                Container(
                  width: 60,
                ),
                Icone('assets/add_user_iconfinder_1902270.png', () {
                  print("Clicou add user");
                }),
                Container(
                  width: 30,
                ),
                Icone('assets/options_iconfinder_free-14_463013.png', () {
                  showDialog(
                    context: context,
                    builder: (context) => DialogPreferencias(this)
                  );
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
              ],
            ),
          ),
          bottomNavigationBar: RaisedButton(
              child: Text("JOGAR"),
              color: PreferenciasDoUsuario.COR_TEMA,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => Loading()));
              }),
        )
    );
  }
}


