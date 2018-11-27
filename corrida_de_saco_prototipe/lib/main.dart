import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  Widget buttons(String title) {
    return Container(
      height: 50.0,
      width: 200.0,
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          "$title",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomAppBarColor: Color.fromRGBO(200, 100, 100, 1),
        buttonColor: Color.fromRGBO(166, 166, 166, 1),
        scaffoldBackgroundColor: Color.fromRGBO(255, 224, 204, 1),
        primaryColor: Color.fromRGBO(200, 100, 100, 1),
      ),
      title: "Corrida de Saco",
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50.0,
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Corrida de saco",
            style: TextStyle(fontSize: 30.0),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
                child: Image.asset("assets/corrida.jpg"),
              ),
              buttons("Jogar"),
              SizedBox(
                height: 20.0,
              ),
              buttons("Cadastro"),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50.0,
                width: 200.0,
                child: RaisedButton(
                  color: Colors.blueAccent,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Login com ",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.normal),
                      ),
                      Image.asset(
                        "assets/face.png",
                        height: 35.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
