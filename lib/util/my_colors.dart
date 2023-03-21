import 'package:flutter/material.dart';

class MyColors{
  static Color vermelho = const Color.fromRGBO(183, 54, 59, 1);
  static Color fundo = const Color.fromRGBO(243, 243, 243, 1);
  static Color amarelo = Color.fromRGBO(255, 200, 9, 1);
  static double cardElevation = 1;
  static const textoPadrao = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  static const textoPreco =   TextStyle(
      color: Color.fromRGBO(183, 54, 59, 1),
      fontSize: 14,
      fontWeight: FontWeight.bold);
  static const textoPrecoInterno =   TextStyle(
      color: Color.fromRGBO(183, 54, 59, 1),
      fontSize: 16,
      fontWeight: FontWeight.bold);

  static Widget getTitulo(String titulo, [Color color = const Color.fromRGBO(183, 54, 59, 1)] ){
    return Text(
      titulo,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:color),
    );
  }
}