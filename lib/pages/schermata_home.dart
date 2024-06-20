import 'package:flutter/material.dart';

import '../entity/valutazione_card.dart';
import '../Data/valutazione_utente.dart';

class SchermataHome extends StatefulWidget {

  @override
  State<SchermataHome> createState() => _SchermataHomeState();
}

class _SchermataHomeState extends State<SchermataHome> {
  List<ValutazioneUtente> listaValutazioni =[
    ValutazioneUtente(utente: 'Utente1', punteggio: '5', recensione: 'Palestra Molto bella e personale simpatico'),
    ValutazioneUtente(utente: 'Utente2', punteggio: '3', recensione: 'Palestra grande'),
    ValutazioneUtente(utente: 'Utente3', punteggio: '2', recensione: 'Ottimo Spogliatoio'),
    ValutazioneUtente(utente: 'Utente4', punteggio: '5', recensione: 'Molto interessante'),
    ValutazioneUtente(utente: 'Utente5', punteggio: '4', recensione: 'Wow'),
    ValutazioneUtente(utente: 'Utente6', punteggio: '2', recensione: 'Da rifare da capo!'),
    ValutazioneUtente(utente: 'Utente7', punteggio: '1', recensione: ''),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Lista Valutazioni'),
        backgroundColor: Colors.orange,
        ),
        body: Column(
          children: listaValutazioni.map((value) => Valutazione(valutazione: value)).toList()
        )
      );
    }
}
