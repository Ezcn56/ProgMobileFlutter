import 'package:flutter/material.dart';
import 'package:prog_mobile_flutter/pages/schermata_esercizi.dart';
import 'package:prog_mobile_flutter/pages/home.dart';
import 'package:prog_mobile_flutter/pages/login.dart';
import 'package:prog_mobile_flutter/pages/schermata_home.dart';

void main() {
  runApp(
      MaterialApp(
        initialRoute: '/login',
        routes: {
          '/home': (context) => Home(),
          '/schermataHome': (conntext) => SchermataHome(),
          '/listaEsercizi': (context) => SchermataEsercizi(),
          '/login': (context) => Login()
        },
      ));
}

