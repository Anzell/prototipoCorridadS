import 'package:flutter/material.dart';
import 'package:corrida_de_saco_prototipe/Global.dart';

class TutorialPage extends StatefulWidget {
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  PageController _pageController;
  int _page = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  Widget _page1() {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              Text("Este é seu personagem", style: TextStyle(fontSize: 20.0)),
              Image.asset("assets/menina.jpg",
                  height: MediaQuery.of(context).size.height / 4),
              SizedBox(height: 20.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.75,
                          child: Center(
                              child: Text(
                                  "Controle a direção rotacionando o botão de direção",
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.center)),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                              border: Border.all())),
                      Icon(Icons.arrow_downward, size: 50.0),
                      Image.asset("assets/direcao.png",
                          height: MediaQuery.of(context).size.height / 8)
                    ]),
                    Column(children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.75,
                          child: Center(
                              child: Text("Pule pressionando o botão de pular",
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.center)),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                              border: Border.all())),
                      Icon(Icons.arrow_downward, size: 50.0),
                      Image.asset("assets/pulo.png",
                          height: MediaQuery.of(context).size.height / 8)
                    ])
                  ])
            ])));
  }

  Widget _page2() {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              SizedBox(height: 20.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Row(children: <Widget>[
                        Image.asset("assets/banana.png",
                            height: MediaQuery.of(context).size.height / 8),
                        Icon(Icons.arrow_left, size: 50.0),
                        Container(
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 2.75,
                            child: Center(
                                child: Text("Desvie dos obstáculos na pista",
                                    style: TextStyle(fontSize: 18.0),
                                    textAlign: TextAlign.center)),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                color: Colors.white,
                                border: Border.all()))
                      ]),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.75,
                          child: Center(
                              child: Text(
                                  "Cuidado! Pule apenas quando seu personagem estiver no chãolt",
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.center)),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                              border: Border.all())),
                      Icon(Icons.arrow_downward, size: 50.0),
                      Image.asset("assets/pulo.png",
                          height: MediaQuery.of(context).size.height / 8)
                    ])
                  ])
            ])));
  }

  Widget _page3() {
    SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              Text("Você pode jogar em dupla",
                  style: TextStyle(fontSize: 20.0)),
              Image.asset("assets/dupla.png",
                  height: MediaQuery.of(context).size.height / 4),
              SizedBox(height: 20.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.75,
                          child: Center(
                              child: Text(
                                  "Em dupla, você e seu aliado deve pular na mesma direção",
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.center)),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                              border: Border.all())),
                      Icon(Icons.arrow_downward, size: 50.0),
                      Image.asset(
                        "assets/direcao.png",
                        height: MediaQuery.of(context).size.height / 8,
                      )
                    ]),
                    Column(children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.75,
                          child: Center(
                              child: Text(
                                  "Em dupla, você e seu aliado devem pular ao mesmo tempo",
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.center)),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                              border: Border.all())),
                      Icon(Icons.arrow_downward, size: 50.0),
                      Image.asset("assets/pulo.png",
                          height: MediaQuery.of(context).size.height / 8)
                    ])
                  ])
            ])));
  }

  Widget _bottomBar() {
    return BottomAppBar(
        color: PreferenciasDoUsuario.COR_TEMA,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                      color: Colors.redAccent,
                      onPressed: (_page != 1)
                          ? () {
                              setState(() {
                                _pageController.previousPage(
                                    duration: Duration(milliseconds: 200),
                                    curve: Cubic(2, 2, 2, 2));
                                _page--;
                              });
                            }
                          : null,
                      child: Row(children: <Widget>[
                        Icon(Icons.navigate_before),
                        Text("Anterior"),
                      ])),
                  Text("${_page} / 3", style: TextStyle(fontSize: 20.0)),
                  RaisedButton(
                      color: Colors.green,
                      onPressed: (_page != 3)
                          ? () {
                              setState(() {
                                _pageController.nextPage(
                                    duration: Duration(milliseconds: 200),
                                    curve: Cubic(2, 2, 2, 2));
                                _page++;
                                _botaoConcluir = _page == 3;
                              });
                            }
                          : () {
                              Navigator.of(context).pop(true);
                            },
                      child: _botaoConcluir
                          ? Text("Concluir")
                          : Row(children: <Widget>[
                              Text("Próximo"),
                              Icon(Icons.navigate_next)
                            ]))
                ])));
  }

  bool _botaoConcluir =
      false; //Se false é mostrado próximo, se true é mostrado um botão de concluir
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: PreferenciasDoUsuario.COR_TEMA,
            title: Text("Tutorial"),
            centerTitle: true),
        bottomNavigationBar: _bottomBar(),
        body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: <Widget>[_page1(), _page2(), _page3()]));
  }
}