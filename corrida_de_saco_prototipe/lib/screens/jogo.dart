import 'package:corrida_de_saco_prototipe/Global.dart';
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
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('SAIR'),
          ),
        ],
      ),
    ) ?? false;
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
                    border: TableBorder.all(color: Colors.black,width: 2),
                    children: [
                      TableRow(
                          children: [
                            Column(
                              children: <Widget>[
                                Padding(
                                  child: Image.asset("assets/corredor1.png",width: MediaQuery.of(context).size.width/3),
                                  padding: EdgeInsets.only(top: 40),
                                ),
                                Align(
                                  child: Image.asset("assets/banana.png",width: 45,),
                                  alignment: Alignment.bottomRight,
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  child: Text('!', style: TextStyle(fontSize: 80,color: Colors.red),),
                                  padding: EdgeInsets.only(top: 10),
                                ),
                                Image.asset("assets/corredor2.png",width: MediaQuery.of(context).size.width/3),
                                Align(
                                  child: Image.asset("assets/tartaruga.png",width: 45,),
                                  alignment: Alignment.bottomRight,
                                )
                              ],
                            ),
                            Padding(
                              child: Image.asset("assets/corredor3.png",width: MediaQuery.of(context).size.width/3),
                              padding: EdgeInsets.only(top: 10),
                            ),
                          ]
                      ),
                    ],
                  ),
                  color: COR_PISTA,
                ),
                Container(
                  color: COR_PISTA,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                      child: Text(
                        "CHEGADA",
                        style: TextStyle(
                            color: Colors.red,
                            fontStyle: FontStyle.normal,
                            fontSize: 40
                        ),
                      ),
                      alignment: Alignment.center,
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
                  child:  Row(
                    children: <Widget>[
                      Icone("assets/tartaruga.png",(){}),
                      Icone("assets/banana.png",(){}),
                      Icone("assets/estrela.png",(){}),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }

}
