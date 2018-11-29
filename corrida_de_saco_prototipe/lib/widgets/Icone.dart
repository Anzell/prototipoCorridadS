import 'package:flutter/material.dart';

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