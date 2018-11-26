import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(

  ),
  title: "Corrida de Saco",
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("teste"),
    );
  }
}