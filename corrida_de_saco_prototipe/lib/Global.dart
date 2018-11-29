import 'package:flutter/material.dart';

/*
* SINGLETON - VER O LINK ABAIXO PARA ENTENDER COMO FUNCIONA SINGLETON EM DART
* https://stackoverflow.com/questions/12649573/how-do-you-build-a-singleton-in-dart
* */
class PreferenciasDoUsuario{
  static Color COR_TEMA = Colors.greenAccent;
  static bool COM_SOM = true;
}

class Icone extends Material {
  Icone(String path, GestureTapCallback quandoClicar)
      : super(
    elevation: 4.0,
    color: Colors.transparent,
    shadowColor: Colors.transparent,
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