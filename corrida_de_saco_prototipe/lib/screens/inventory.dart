import 'package:flutter/material.dart';
import 'package:corrida_de_saco_prototipe/Global.dart';
class Inventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PreferenciasDoUsuario.COR_TEMA,
        title: Text("Inventario"),
        centerTitle: true,
      ),
    );
  }
}