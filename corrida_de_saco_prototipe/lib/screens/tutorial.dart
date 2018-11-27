import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
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
                              duration: Duration(milliseconds: 500),
                              curve: Cubic(2, 2, 2, 2));
                          _page--;
                        });
                      }
                    : null,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.navigate_before),
                    Text("Anterior"),
                  ],
                ),
              ),
              Text(
                "${_page} / 3",
                style: TextStyle(fontSize: 20.0),
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: (_page != 3)
                    ? () {
                        setState(() {
                          _pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Cubic(2, 2, 2, 2));
                          _page++;
                        });
                      }
                    : null,
                child: Row(
                  children: <Widget>[
                    Text("Próximo"),
                    Icon(Icons.navigate_next)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Este é seu personagem",
                  style: TextStyle(fontSize: 20.0),
                ),
                Image.asset(
                  "assets/menina.jpg",
                  height: 180.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 150.0,
                          width: 150.0,
                          child: Center(
                            child: Text(
                              "Controle a direção rotacionando o botão de direção",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                              border: Border.all()),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          size: 50.0,
                        ),
                        Image.asset(
                          "assets/direcao.png",
                          height: 90.0,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 150.0,
                          width: 150.0,
                          child: Center(
                            child: Text(
                              "Pule pressionando o botão de pular",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                              border: Border.all()),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          size: 50.0,
                        ),
                        Image.asset(
                          "assets/pulo.png",
                          height: 90.0,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(),
          Container()
        ],
      ),
    );
  }
}
