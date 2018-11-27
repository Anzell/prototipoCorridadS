import 'package:flutter/material.dart';

class InicialPage extends StatefulWidget {
  @override
  _InicialPageState createState() => _InicialPageState();
}

const COR_TRANSPARENTE = Color.fromARGB(0, 255, 0, 0);
const BORDA_LADO_TRANSPARENTE = BorderSide(color: COR_TRANSPARENTE);
var COR_TEMA = Colors.greenAccent;

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: COR_TEMA,
            actions: <Widget>[
              IconeNoTopo('assets/gift_iconfinder_7_2185392.png',(){
                print("Clicou gift");
              }),
              IconeNoTopo('assets/add_user_iconfinder_1902270.png',(){
                print("Clicou add user");
              }),
              IconeNoTopo('assets/options_iconfinder_free-14_463013.png',(){
                print("Clicou options");
              })
            ]
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Image.asset("assets/homem_iconfinder_Man-14_379487.png"),
                          flex: 1,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                child: Text(
                                    'DigaoParceiro'
                                ),
                                padding: EdgeInsets.fromLTRB(0,0,0,6),
                              ),
                              Padding(
                                child: Align(
                                  child: Text(
                                    'Level',
                                    textAlign: TextAlign.center,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                padding: EdgeInsets.fromLTRB(0,0,0,6),
                              ),
                              Padding(
                                child: Row(
                                    children: <Widget>[
                                      Text(
                                          '6 '
                                      ),
                                      Expanded(child: LinearProgressIndicator(value: 0.6)),
                                      Text(
                                          ' 7'
                                      ),
                                    ]
                                ),
                                padding: EdgeInsets.fromLTRB(0,0,0,6),
                              ),
                              Padding(
                                child: Align(
                                  child: Text(
                                      'Titulo: Pulador'
                                  ),
                                  alignment: Alignment.center,
                                ),
                                padding: EdgeInsets.fromLTRB(0,0,0,6),
                              ),
                              Padding(
                                child: Text(
                                    'Pontos: 26'
                                ),
                                padding: EdgeInsets.fromLTRB(0,0,0,6),
                              )
                            ],
                          ),
                          flex: 1 /*PESO 1*/,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Align(child: Text("Ranking Semanal:"), alignment: Alignment.topLeft,),
                        Table(
                          border: TableBorder.all(width: 1.0, color: COR_TRANSPARENTE),

                          children: [
                            TableRow(
                              children: [
                                Text(""), Text("Apelido"),Text("Pontuação"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("1º"), Text("M1jor"),Text("80"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("2º"), Text("D3struct0r"),Text("72"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("3º"), Text("L0k0"),Text("71"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("4º"), Text("M1st3rChef"),Text("69"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("5º"), Text("Ps4 > Xbox"),Text("65"),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("6º"), Text("Luciano Hulk"),Text("58"),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ), padding: EdgeInsets.all(20)),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 1000,
                      height: 1000,
                      color: COR_TEMA,
                    ),
                    Align(
                      child: RaisedButton(
                          child: Text("JOGAR"),
                          color: Colors.green,
                          onPressed: (){

                          }
                      ), alignment: Alignment.center,
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}

class IconeNoTopo extends Material{
  IconeNoTopo(String path, GestureTapCallback quandoClicar) : super (
    elevation: 4.0,
    color: Colors.transparent,
    child: Ink.image(
    image: AssetImage(path),
      fit: BoxFit.cover,
      width: 30.0,
      height: 30.0,
      child: InkWell(
        onTap: quandoClicar,
        child: null,
      ),
    ),
  );
}

