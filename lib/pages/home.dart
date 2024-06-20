import 'package:flutter/material.dart';
import 'package:prog_mobile_flutter/entity/valutazione_card.dart';
import 'package:prog_mobile_flutter/Data/valutazione_utente.dart';
import 'package:prog_mobile_flutter/pages/schermata_esercizi.dart';
import 'package:prog_mobile_flutter/pages/schermata_home.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> schermate = [
    SchermataHome(),
    SchermataEsercizi()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: schermate[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'lista Esercizi',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },


      ),
    );
  }
}
