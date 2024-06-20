import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:prog_mobile_flutter/Data/esercizio.dart';
import 'package:prog_mobile_flutter/entity/esercizio_card.dart';
import 'package:flutter/rendering.dart';


class SchermataEsercizi extends StatefulWidget {

  @override
  State<SchermataEsercizi> createState() => _SchermataEserciziState();
}

class _SchermataEserciziState extends State<SchermataEsercizi> {

  /*
  Future<Esercizio> richiestaEsericizio() async {
    Map<String, String> requestHeaders = {
      'x-rapidapi-key': '875aca7181msh5f520c9bfd79637p160357jsn0ddae58e07e1',
      'x-rapidapi-host': 'exercisedb.p.rapidapi.com'
    };

    final response = await http.get(
      Uri.parse('https://exercisedb.p.rapidapi.com/exercises?limit=10'),
      // Send authorization headers to the backend.
      headers: requestHeaders,
    );

    final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

    return Esercizio.fromJson(responseJson);
  }

  @override
  void initState() {
    super.initState();
    var esercizio = richiestaEsericizio();
    print(esercizio);
    //getListaEsercizi();
  }

   */
  Esercizio esercizio = Esercizio(nome: '', serie: '', rep: '', peso: '');
  String nome = '';
  String serie = '';
  String rep = '';
  String peso = '';

  List<Esercizio> listaEsercizi = [
    Esercizio(nome: 'nome', serie: 'serie', rep: 'rep', peso: 'peso')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Esercizi'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 250,
            height: 120,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      onChanged: (value){
                        nome = value;
                      },
                      style: TextStyle(
                          color: Colors.red
                      ),
                      decoration: InputDecoration(
                          hintText: 'Inserire nome esercizio',
                          hintStyle: TextStyle(
                              color: Colors.red
                          ),
                          iconColor: Colors.red
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){
                          if (nome != '' && serie != ''  && rep != ''){
                            esercizio = Esercizio(nome: nome, serie: serie, rep: rep, peso: peso);
                          }
                        },
                        child: Text('Aggiungi Esercizio')
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      onChanged: (value){
                        serie = value;
                      },
                      style: TextStyle(
                          color: Colors.red
                      ),
                      decoration: InputDecoration(
                          hintText: 'Serie',
                          hintStyle: TextStyle(
                              color: Colors.red
                          ),
                      ),
                    ),
                    TextField(
                      onChanged: (value){
                        rep = value;
                      },
                      style: TextStyle(
                          color: Colors.red
                      ),
                      decoration: InputDecoration(
                          hintText: 'Rep',
                          hintStyle: TextStyle(
                              color: Colors.red
                          ),
                      ),
                    ),
                    TextField(
                      onChanged: (value){
                        peso = value;
                      },
                      style: TextStyle(
                          color: Colors.red
                      ),
                      decoration: InputDecoration(
                          hintText: 'Peso',
                          hintStyle: TextStyle(
                              color: Colors.red
                          ),
                      ),
                    )
                  ],
                )
              ],
            )
          ),
          Container(
            width: 250,
            height: 400,
            child: Column(
              children: listaEsercizi.map((value)=>EsercizioCard(esercizio: value)).toList()
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
        onPressed: () {
          if(esercizio.nome != '' && esercizio.serie != '' && esercizio.rep != '') {
            listaEsercizi.add(esercizio);
          }
        },
      ),
    );
  }
}