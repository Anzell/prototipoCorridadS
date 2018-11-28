import 'dart:async';

import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  load() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        _value += 0.1;
      });
      Timer(Duration(seconds: 1), () {
        setState(() {
          _value += 0.1;
          _message = "Jogadores encontrados";
        });
        Timer(Duration(seconds: 1), () {
          setState(() {
            _value += 0.1;
            _message = "Preparando cenário";
          });
          Timer(Duration(milliseconds: 500), () {
            setState(() {
              _value += 0.2;
              _message = "Preparando cenário";
            });
            Timer(Duration(milliseconds: 500), () {
              setState(() {
                _value += 0.3;
                _message = "Preparando cenário";
              });
              Timer(Duration(seconds: 1), () {
                setState(() {
                  _value += 0.1;
                  _message = "Iniciando Jogo";
                });
                Timer(Duration(seconds: 1), () {
                  setState(() {
                    _value += 0.1;
                    _message = "Iniciando Jogo";
                  });
                });
              });
            });
          });
        });
      });
    });
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  double _value = 0;
  String _message = "Buscando jogadores";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CircularProgressIndicator(
              value: _value,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            "${_message}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            height: 50.0,
          ),
          RaisedButton(
            padding: EdgeInsets.all(13.0),
            color: Colors.redAccent,
            child: Text(
              "Cancelar",
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              return showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        "Cancelar",
                        textAlign: TextAlign.center,
                      ),
                      content: Text("Deseja realmente cancelar a partida?"),
                      actions: <Widget>[

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Não"),
                            ),
                            FlatButton(
                              child: Text("Sim",style: TextStyle(color: Colors.redAccent),),
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        ),
                      ],
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
