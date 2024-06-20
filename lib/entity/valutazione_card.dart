import 'package:flutter/material.dart';
import 'package:prog_mobile_flutter/Data/valutazione_utente.dart';

class Valutazione extends StatelessWidget {

  final ValutazioneUtente valutazione;
  Valutazione({required this.valutazione});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      elevation: 10,
      color: Colors.grey[300],
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(flex: 1,),
                Icon(
                  Icons.person,
                color: Colors.green,
                ),
                Spacer(flex: 2,),
                Text(
                  valutazione.utente,
                  style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontSize: 16
                  ),
                ),
                Spacer(flex: 4,),
                Text(
                  valutazione.punteggio,
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 16
                  ),
                ),
                Spacer(flex: 3,),
              ]
            ),
            Row(
              children: [
                Text(
                  valutazione.recensione,
                  style: TextStyle(
                      color: Colors.blue,
                      fontStyle: FontStyle.italic,
                      fontSize: 16
                  ),
                ),
              ],
            ),
          ]
        ),
        ),
    );
  }
}

