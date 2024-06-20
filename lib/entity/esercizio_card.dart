import 'package:flutter/material.dart';

import '../Data/esercizio.dart';

class EsercizioCard extends StatelessWidget {

  final Esercizio esercizio;
  EsercizioCard({required this.esercizio});

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
                    Icon(
                      Icons.sports_gymnastics_sharp,
                      color: Colors.orange,
                    ),
                    Text(
                      esercizio.nome,
                      style: TextStyle(
                          color: Colors.red,
                          fontStyle: FontStyle.italic,
                          fontSize:24
                      ),
                    ),
                  ]
              ),
              Row(
                children: [
                  Spacer(flex: 1,),
                  Text(
                    esercizio.serie,
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize:32
                    ),
                  ),
                  Spacer(flex: 2,),
                  Text(
                    esercizio.rep,
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize:24
                    ),
                  ),
                  Spacer(flex: 2,),
                  Text(
                    esercizio.peso,
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize:24
                    ),
                  ),
                  Spacer(flex: 1,),
                ],
              ),
            ]
        ),
      ),
    );
  }
}
