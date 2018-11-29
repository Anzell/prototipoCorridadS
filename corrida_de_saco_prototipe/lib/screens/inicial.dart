import 'package:corrida_de_saco_prototipe/screens/loading.dart';
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
                  PreferenciasDoUsuarioSingleton.COR_TEMA = cor;
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
          backgroundColor: PreferenciasDoUsuarioSingleton.COR_TEMA,
          actions: <Widget>[
            Icone(
              'assets/gift_iconfinder_7_2185392.png',
              () {
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
                  builder: (BuildContext context) {
                    AlertDialog dialog;
                    dialog = new AlertDialog(
                      key: Key("temadialog"),
                      title: new Text("Tema"),
                      actions: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                BotaoCor(_state, dialog, Colors.red),
                                BotaoCor(_state, dialog, Colors.blue),
                                BotaoCor(_state, dialog, Colors.yellow),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                BotaoCor(_state, dialog, Colors.amber),
                                BotaoCor(_state, dialog, Colors.black),
                                BotaoCor(_state, dialog, Colors.black12),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                BotaoCor(_state, dialog, Colors.lime),
                                BotaoCor(_state, dialog, Colors.orange),
                                BotaoCor(_state, dialog, Colors.pinkAccent),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                BotaoCor(_state, dialog, Colors.blueGrey),
                                BotaoCor(_state, dialog, Colors.deepOrange),
                                BotaoCor(_state, dialog, Colors.green),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icone(
                                    "assets/iconfinder_speaker_1054973.png", (){

                                    }
                                ),
                                Container(
                                  width: 6,
                                  height: 2,
                                ),
                                Switch(
                                  value: PreferenciasDoUsuarioSingleton.COM_SOM,
                                  onChanged: (enabled){
                                    setState(() {
                                      PreferenciasDoUsuarioSingleton.COM_SOM = enabled;
                                    });
                                  }
                                )
                              ],
                            )
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
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: PreferenciasDoUsuarioSingleton.COR_TEMA,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Align(
                    child: RaisedButton(
                        child: Text("JOGAR"),
                        color: Colors.green,
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Loading()));
                        }),
                    alignment: Alignment.center,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class Icone extends Material {
  Icone(String path, GestureTapCallback quandoClicar)
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
