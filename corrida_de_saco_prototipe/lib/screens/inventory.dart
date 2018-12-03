import 'package:flutter/material.dart';
import 'package:corrida_de_saco_prototipe/Global.dart';

class Inventory extends StatelessWidget {
  Widget _example(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 70.0,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset("assets/banana.png"),
              Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  child: Column(children: <Widget>[
                    Text("Banana",
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold)),
                    Text("Ao pisar, adversários escorregam e caem no chão",
                        textAlign: TextAlign.center)
                  ])),
              Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: RaisedButton(
                      onPressed: () {}, child: Text("Ver detalhes")))
            ]),
        decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10.0)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: PreferenciasDoUsuario.COR_TEMA,
          title: Text("Inventario"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(9.0),
                child: Column(children: <Widget>[
                  _example(context),
                  SizedBox(height: 20.0),
                  _example(context),
                  SizedBox(height: 20.0)
                ]))));
  }
}